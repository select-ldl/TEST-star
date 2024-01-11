import pymysql
import re
from tqdm import tqdm

def get_concatenated_numbers(s):
    # 提取数字
    return ''.join(re.findall(r'\d+', s))

def find_position(s, target):
    # 定位符号在哪里
    positions = [i for i in range(len(s)) if s[i:i+3] == target]
    return positions
def code(results):
    # 处理数据
    abcd=[]
    for row in results:
        name, id,moqsd,pcs = row
        if "MOQ" in name:
            target = "MOQ"
            oem_pp=find_position(name, target)
            pona =name[:oem_pp[0]]
            moq =name[oem_pp[0]:]
            oem_moq=get_concatenated_numbers(moq)
            # print(oem_moq)
            pp=[id,pona.strip(),oem_moq,pcs]
            abcd.append(pp)
            continue
        if "moq" in name:
            target = "moq"
            oem_pp=find_position(name, target)
            pona =name[:oem_pp[0]]
            moq =name[oem_pp[0]:]
            oem_moq=get_concatenated_numbers(moq)
            # print(oem_moq)
            pp=[id,pona.strip(),oem_moq,pcs]
            abcd.append(pp)
            continue
        ppddd = [id, str(name), moqsd, pcs]
        if ppddd not in abcd:
            abcd.append(ppddd)
            continue
    return abcd
def oem_my_select():
    # 执行SQL查询
    select_sql = """SELECT title,id,moq,pcs FROM fa_shopro_goods;"""
    cursor.execute(select_sql)
    results = cursor.fetchall()
    # 获取查询结果
    return code(results)
def oem_my_up():
    # 执行SQL更新
    codes = oem_my_select()
    for word in tqdm(codes):
        ids = int(word[0])
        title = word[1]
        if word[2] == "":
            word[2] = "1000"
        moq = int(word[2])
        # 将pcs数据改为与moq同步
        if int(word[2])>1000:
            word[3]="1000"
        else:
            word[3]=word[2]
        pcs=word[3]
        # 使用参数化查询构建更新语句
        update_sql = "UPDATE fa_shopro_goods SET title=%s, moq=%s,pcs=%s WHERE id=%s;"

        # 执行更新操作
        cursor.execute(update_sql, (title, moq,pcs, ids))
        # 提交更改到数据库
        connection.commit()


if __name__ == '__main__':
    # # 连接数据库


    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='123456',
                                 database='d-o',
                                 charset='utf8')

    # 创建一个游标对象
    cursor = connection.cursor()
    ###数据处理过程###

    # for word in oem_my_select():
    #     # 查询
    #     id=int(word[0])
    #     title=word[1]
    #     if word[2] =="":
    #         word[2]="1000"
    #     moq = int(word[2])
    #     if int(word[2])>1000:
    #         word[3]="1000"
    #     else:
    #         word[3]=word[2]
    #     pcs = word[3]
    #     print(id,title,moq,pcs)
    # 执行更新
    oem_my_up()

    # 关闭游标和连接
    cursor.close()
    connection.close()



