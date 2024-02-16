from flask import Flask

app = Flask(__name__)

@app.route('/interview')
def index():
    return ('<head><title>Eduardo Beger Sangali</title></head>'
            '<h1>Eduardo Beger Sangali</h1>'
            '<h2>Professional Experiences</h2>'
            '<dl>'
    
            '<dt id="ambev-experience-title"><b>Senior Quality Analyst | AMBEV S.A. (BEES) | 03/2022 to 03/2023</b></dt>'
            '<dd id="ambev-experience-description">I was responsible for the quality of one module of a mobile application, which was being '
            'implemented in several countries expanding the product. For these launches, I collaborated with the '
            'development of an automation of a mass data generator (Javascript within POSTMAN) that sped up tasks that would otherwise '
            ' take hours or even days of work to a couple minutes, contributing greatly to the deadlines and quality in '
            'deliveries.</dd>'
            '<br>'
            
            '<dt id="daitan-experience-title"><b>SDET (Software Development Engineer in Test) | Daitan | 10/2021 to 02/2022</b></dt>'
            '<dd id="daitan-experience-description">I was responsible for test automation using Python, in addition to researching the best support framework '
            'for the solution in question. I was responsible for coding, executing, documenting and '
            'representing everything related to quality of the product. The solution was focused on data analysis '
            '(python, pandas, etc.) using Docker.</dd>'
            '<br>'
            
            '<dt id="gft-experience-title"><b>L2 Test Analyst | GFT | 03/2020 to 09/2021</b></dt>'
            '<dd id="gft-experience-description">I was responsible for understanding technical documentation focusing on creating the necessary test plan to '
            'better cover the functionality in question, creating, documenting and executing test cases '
            '(manual and automated) via interface and API'
            '<i>Due to the project I worked on being one of the pioneers in API automation at GFT, I developed text '
            'and video training so that employees allocated to projects that may need to automate API can perform '
            'this function as expected.</i></dd>'
            '<br>'
            
            '<dt id="fit-experience-title"><b>Junior Tester | FIT Institute of Technology | 12/2018 to 03/2020</b></dt>'
            '<dd id="fit-experience-description">Test executor was my main role, but on occasion, I would work with the creation of test cases and, '
            'consequently, the creation of test plans, in addition to the creation of some automations.'
            '<i><br>In 2019 I worked on a project in which I had the opportunity to go to Italy for regression testing '
            'with the QA team from Brazil and Italy, working together to finalize the product.'
            '<br>Also in 2019 I had the opportunity to go to China on another project, for some workshops as both a conductor '
            'and a participant to spread knowledge and learn about testing and QA methodology, among the teams working in this area of '
            'the project.</i></dd>'
            '</dl>'
            '')

app.run(host='0.0.0.0', port=5050)





