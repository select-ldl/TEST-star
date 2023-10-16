# https://tgsc.qifudaren.net/uLHdDeVJXx.php/shopro/goods/goods/add
import requests
from googletrans import Translator


def up_data_L():
    data = {
        "row[category_ids]":"69,179,183,187,186,194,198,248,316",#商品类型
        "row[content]":"<p>图文详情<br/></p>",
        "row[dispatch_ids]":"1",
        "row[is_back]":"0",
        "row[dispatch_type]":"express",
        "row[expire_day]":"0",
        "row[image]":"/uploads/20231008/b0cd6255037762f42a31d358be6f7446.png",
        "row[images]":"/uploads/20231008/7bea85a6832b2d95e782747172843b0f.png,/uploads/20231008/b0cd6255037762f42a31d358be6f7446.png",
        "row[is_score]":"0",
        "row[score_bi]":"",
        "row[is_sku]":"0",#0为单1为多
        "row[original_price]":"0.3",#划线价格
        "row[params]":"[]",
        "row[price]":"0.1",#价格
        "row[cost_price]":"0.2",#成本价格
        "row[service_ids]":"",
        "row[show_sales]":"0",#虚假销量
        "row[store_type]":"0",
        "row[status]":"up",#上架
        "row[gongyingshang]":"供应商",#供应商
        "row[subtitle]":"副标题",#副标题
        "row[title]":"标题1",#标题
        "row[title_en]":"标题en",#标题en
        "row[title_tw]":"标题tw",#标题tw
        "row[type]":"normal",
        "row[views]":"0",#虚假人数
        "row[is_hui]":"0",
        "row[is_pi]":"0",
        "row[weigh]":"",#排序
        "row[weight]":"3.1",#商品重量
        "row[stock]":"123",#库存
        "row[stock_warning]":"",
        "row[sn]":"2.1",#商品编码
        "row[tm]":"1.1",#商品条码
        "row[zenggoods_sku_id]":"0",
        "row[autosend_content]":"",
        "row[zenggoods_id]":"",
        "sku[listData]":[],
        "sku[priceData]":[]
    }
    return data
def up_data_M():
    data = {
  "row[category_ids]": "69",
  "row[content]": "",
  "row[dispatch_ids]": "1",
  "row[is_back]": "0",
  "row[dispatch_type]": "express",
  "row[expire_day]": "0",
  "row[image]": "/uploads/20231010/e0815bfff0743031b4076ff8109e7610.jpg",
  "row[images]": "/uploads/20231010/e0815bfff0743031b4076ff8109e7610.jpg",
  "row[is_score]": "0",
  "row[score_bi]": "",
  "row[is_sku]": "1",
  "row[original_price]": "378",
  "row[params]": "[]",
  "row[price]": "126",
  "row[cost_price]": "",
  "row[service_ids]": "",
  "row[show_sales]": "",
  "row[store_type]": "0",
  "row[status]": "up",
  "row[gongyingshang]": "",
  "row[subtitle]": "测试",
  "row[title]": "测试",
  "row[title_en]": "",
  "row[title_tw]": "",
  "row[type]": "normal",
  "row[views]": "",
  "row[is_hui]": "0",
  "row[is_pi]": "0",
  "row[weigh]": "",
  "row[weight]": "",
  "row[stock]": "",
  "row[stock_warning_switch]": "false",
  "row[stock_warning]": "",
  "row[sn]": "",
  "row[tm]": "",
  "row[zenggoods_sku_id]": "0",
  "row[autosend_content]": "",
  "row[zenggoods_id]": "",
  "sku[listData]":
      "[{\"id\":0,"
      "\"temp_id\":1,"
      "\"name\":\"size1\","
      "\"pid\":0,"
      "\"children\":["
      "{\"id\":0,"
      "\"temp_id\":3,"
      "\"name\":\"size3\","
      "\"pid\":0},"
      "{\"id\":0,\"temp_id\":4,\"name\":\"size4\",\"pid\":0}]},{\"id\":0,\"temp_id\":2,\"name\":\"color2\",\"pid\":0,\"children\":[{\"id\":0,\"temp_id\":5,\"name\":\"color5\",\"pid\":0}]}]",
  "sku[priceData]":
      "[{\"id\":0,\"temp_id\":1,\"goods_sku_ids\":\"\",\"goods_id\":0,\"weigh\":0,\"image\":\"\",\"stock\":\"99\",\"stock_warning\":null,\"price\":\"126\",\"cost_price\":\"\",\"sn\":\"\",\"tm\":\"\",\"weight\":0,\"status\":\"up\",\"goods_sku_text\":[\"size3\",\"color5\"],\"goods_sku_temp_ids\":[3,5]},{\"id\":0,\"temp_id\":2,\"goods_sku_ids\":\"\",\"goods_id\":0,\"weigh\":0,\"image\":\"\",\"stock\":\"99\",\"stock_warning\":null,\"price\":\"126\",\"cost_price\":\"\",\"sn\":\"\",\"tm\":\"\",\"weight\":0,\"status\":\"up\",\"goods_sku_text\":[\"size4\",\"color5\"],\"goods_sku_temp_ids\":[4,5]}]"
}
    return data
# 创建翻译器对象
def tess():
    data={'row[category_ids]': '323,323,428,323,428,433,', 'row[content]': '<p>Product Name:测试</p><p>/BOX</p><p>Color:颜色</p><p>Packaging method:pop</p><p><br/></p>', 'row[dispatch_ids]': '1', 'row[is_back]': '0', 'row[dispatch_type]': 'express', 'row[expire_day]': '0', 'row[image]': '/uploads/20231008/7bea85a6832b2d95e782747172843b0f.png', 'row[images]': '/uploads/20231008/7bea85a6832b2d95e782747172843b0f.png,/uploads/20231008/7bea85a6832b2d95e782747172843b0f.png,', 'row[is_score]': '0', 'row[score_bi]': '', 'row[is_sku]': '1', 'row[original_price]': '378.0', 'row[params]': '[]', 'row[price]': '126.0', 'row[cost_price]': '', 'row[service_ids]': '', 'row[show_sales]': '', 'row[store_type]': '0', 'row[status]': 'up', 'row[gongyingshang]': '泰源', 'row[subtitle]': '72268', 'row[title]': '测试\tMOQ\t300', 'row[title_en]': '', 'row[title_tw]': '', 'row[type]': 'normal', 'row[views]': '', 'row[is_hui]': '0', 'row[is_pi]': '0', 'row[weigh]': '', 'row[weight]': '', 'row[stock]': '12', 'row[stock_warning_switch]': 'false', 'row[stock_warning]': '', 'row[sn]': '', 'row[tm]': '', 'row[zenggoods_sku_id]': '0', 'row[autosend_content]': '', 'row[zenggoods_id]': '',
          "sku[listData]":
              "[{\"id\":0,"
              "\"temp_id\":2,"
              "\"name\":\"size1\","
              "\"pid\":0,"
              "\"children\":["
              "{\"id\":0,"
              "\"temp_id\":3,"
              "\"name\":\"size3\","
              "\"pid\":0},"
              "{\"id\":0,\"temp_id\":5,\"name\":\"size4\",\"pid\":0}]},{\"id\":0,\"temp_id\":4,\"name\":\"color2\",\"pid\":0,\"children\":[{\"id\":0,\"temp_id\":6,\"name\":\"color5\",\"pid\":0}]}]",
          "sku[priceData]":
              "[{\"id\":0,\"temp_id\":1,\"goods_sku_ids\":\"\",\"goods_id\":0,\"weigh\":0,\"image\":\"\",\"stock\":\"99\",\"stock_warning\":null,\"price\":\"126\",\"cost_price\":\"\",\"sn\":\"\",\"tm\":\"\",\"weight\":0,\"status\":\"up\",\"goods_sku_text\":[\"size3\",\"color5\"],\"goods_sku_temp_ids\":[4,6]},{\"id\":0,\"temp_id\":2,\"goods_sku_ids\":\"\",\"goods_id\":0,\"weigh\":0,\"image\":\"\",\"stock\":\"99\",\"stock_warning\":null,\"price\":\"126\",\"cost_price\":\"\",\"sn\":\"\",\"tm\":\"\",\"weight\":0,\"status\":\"up\",\"goods_sku_text\":[\"size4\",\"color5\"],\"goods_sku_temp_ids\":[5,6]}]"
          }

    return data
def  data_en(data):
    translator = Translator()
    # 定义一个字典，包含中英文键值对
    # 遍历字典中的每个键值对，将中文翻译成英文
    for key in data:
        value = data[key]
        if isinstance(value, str):  # 如果值是字符串类型，则进行翻译
            translated_value = translator.translate(value, src='zh-CN', dest='en').text  # 使用googletrans进行翻译
            data[key] = translated_value  # 将翻译后的值更新到字典中对应的键上
    return data # 输出翻译后的字典

def d_power_up():
    sku_L=up_data_L()
    sku_M=up_data_M()
    test=tess()
    headers={
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0",
        "Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
    #"Cookie":"PHPSESSID=8fctn6876q4m7bevr9g3qjjo48; think_var=zh-cn"
    }
    url = "https://tgsc.qifudaren.net/uLHdDeVJXx.php/shopro/goods/goods/add"
    cookies = {
        "PHPSESSID": "6q06nkjh7941d8nu0esjrslvdm",
        "think_var": "zh-cn"
    }
    # dpower_re=requests.post(url=url,headers=headers,cookies=cookies,data=sku_L)
    # print(dpower_re.json)
    # dpower_re=requests.post(url=url,headers=headers,cookies=cookies,data=sku_M)
    # print(dpower_re.json)
    dpower_re=requests.post(url=url,headers=headers,cookies=cookies,data=test)
    print(dpower_re.json)

if __name__ == '__main__':
    d_power_up()