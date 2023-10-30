
#Shopee Open Platform是一个专门为商家提供新机会的平台。
# 为了给开发者提供更好的使用环境，Shopee准备了许多API方便Shopee卖家用户串接。

#首先，你需要访问Shopee的开放平台网站：https://open.shopee.com/。
# 然后，注册账号并登录。接下来，你需要创建App，通过APP维度调用OpenAPI。
# 当开发者资料被平台审核通过后，即可创建APP。如果你是第三方开发者，
# 一定要选择Third-party Partner Platform，因为Shopee Seller需要你是有虾皮店铺才可以开通。
# 最后，你就可以在Open API平台上直接申请串接所需之Partner ID和密钥，无须再逐一向Shopee申请店铺的独立密钥。

# http://lazada.dianba6.com/
# https://lazada.menglar.com/
# https://shopee.tw/user/account/profile
# https://shopee.com/
# https://shopee.mobduos.com/workbench/all-site-analysis/store-analysis
import requests
from urllib.request import urlopen
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
import json
def pp1():
    response = urlopen('https://shopee.co.th/Mobile-Gadgets-cat.11044951')
    rss = BeautifulSoup(response.read(), "html.parser")

    items = []

    for i in (BeautifulSoup(response.read(), 'html.parser')).find_all('div'):
        print(i)
    for item in rss.find_all('li'):
        img = item.find('img')
        src = img.find('src')
        dates = {
            # "img":img,
            "src": src
        }
        items.append(dates)
    with open('sh.txt', 'w', encoding='utf8')as f1:
        f1.write(str(items))
        f1.close()
def pp2():
    req=requests.get('https://shopee.co.th/Mobile-Gadgets-cat.11044951')
    print(req.text)
    print(req.url)
def pp3():
    # 浏览器启动选项
    option = webdriver.FirefoxOptions()
    # 指定为无界面模式
    option.add_argument('--headless')
    # option.headless=True  或者将上面的语句换成这条亦可
    # 创建Chrome驱动程序的实例
    driver = webdriver.Firefox(options=option)
    url = 'https://shopee.co.th/Mobile-Gadgets-cat.11044951'
    # url='https://shopee.co.th/buyer/login?next=https%3A%2F%2Fshopee.co.th%2F(%25E0%25B9%2582%25E0%25B8%2584%25E0%25B9%2589%25E0%25B8%2594-F6YGB9-%25E0%25B8%25A5%25E0%25B8%2594%25E0%25B9%2580%25E0%25B8%259E%25E0%25B8%25B4%25E0%25B9%2588%25E0%25B8%25A1-30.-)%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%2594%25E0%25B8%25A5%25E0%25B8%25A1%25E0%25B8%258A%25E0%25B8%25B2%25E0%25B8%2595%25E0%25B9%2581%25E0%25B8%259A%25E0%25B8%2595%25E0%25B9%2584%25E0%25B8%2594%25E0%25B9%2589-%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%2581%25E0%25B8%25A5%25E0%25B8%25A1%25E0%25B8%259E%25E0%25B8%2581%25E0%25B8%259E%25E0%25B8%25B2-%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%2594%25E0%25B8%25A5%25E0%25B8%25A1%25E0%25B8%2595%25E0%25B8%25B1%25E0%25B9%2589%25E0%25B8%2587%25E0%25B9%2582%25E0%25B8%2595%25E0%25B9%258A%25E0%25B8%25B0%25E0%25B9%2581%25E0%25B8%259A%25E0%25B8%259A%25E0%25B8%259E%25E0%25B8%2581%25E0%25B8%259E%25E0%25B8%25B2%25E0%25B8%25A1%25E0%25B8%25B5%25E0%25B9%2581%25E0%25B8%259A%25E0%25B8%2595%25E0%25B9%2583%25E0%25B8%2599%25E0%25B8%2595%25E0%25B8%25B1%25E0%25B8%25A7-%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%259A%25E0%25B9%2580%25E0%25B8%2581%25E0%25B9%2587%25E0%25B8%259A%25E0%25B9%2584%25E0%25B8%2594%25E0%25B9%2589-%25E0%25B8%259B%25E0%25B8%25A3%25E0%25B8%25B1%25E0%25B8%259A%25E0%25B9%2581%25E0%25B8%25A3%25E0%25B8%2587%25E0%25B8%25A5%25E0%25B8%25A1%25E0%25B9%2584%25E0%25B8%2594%25E0%25B9%2589-3-%25E0%25B8%25A3%25E0%25B8%25B0%25E0%25B8%2594%25E0%25B8%25B1-i.143538045.10199215816%3Fsp_atk%3D51b21d82-a3c5-48fb-b1dd-74126fac69ee%26xptdk%3D51b21d82-a3c5-48fb-b1dd-74126fac69ee'
    # driver.get(url)
    print(driver.title)
    print(driver.current_window_handle)
    print(driver.find_element(By.XPATH,'//*[@id="main"]/div/div[2]/div/div/div[4]/div[2]/section/ul/li[2]').text)
    # 根据定位条件定位内容，并输出
    # a1='/html/body/div[2]/div[1]/div[1]/div/div[3]/div[1]/button'
    # driver.find_element(By.XPATH, a1).click()
    driver.implicitly_wait(10)
    # content = driver.find_element(By.XPATH, '//*[@id="s-top-left"]/a[1]')
    x='//*[@id="main"]/div/div[2]/div/div/div[4]/div[2]/section/ul/li[8]/a/div/div/div[2]/div[2]/div[2]/span[3]'
    x='/html/body/div[1]/div/div[2]/header/div[1]/nav/div[1]/a[2]'
    content = driver.find_element(By.XPATH,x)
    # print(content.text)
    print(driver.page_source)
    # 关闭浏览器
    mm='//ul[contains(@class,//*[@id="main"]/div/div[2]/div/div/div[4]/div[2]/section/ul/li[2])]'
    driver.close()

if __name__ == '__main__':
    # pp2()
    pp3()




