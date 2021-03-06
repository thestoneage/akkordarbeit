Feature: HTML Output
  In order to view the chord files
  As a user
  I want to get HTML output

  Scenario: HTML Output of a simple Song
    Given the parsetree
    """
    [
      [
        ['[D]', 'Do what I say, ', '[Em]', 'or I will suffer']
      ]
    ]
    """

    When I format it as HTML
    Then the output should be
    """
    <!DOCTYPE html>
    <html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
    	<head>
    		<meta http-equiv='Content-type'     content='text/html; charset=UTF-8' />
    		<title>Song-Sheet</title>
    		<meta http-equiv='content-language' content='en' />
    		<style>
    			p {
    				line-height: 300%;
    				max-width: 30em;
    			}
    			.chord {
    				position: relative;
    			}
    			.chord span {
    				position: absolute;
    				bottom: 40%;
    				font-size: 66%;
    				font-weight: bold;
    			}
    			.chord .brackets {
    				display: none;
    			}
    		</style>
    	</head>
    	<body>
    		<header>
    			<h1>Song-Sheet</h1>
    		</header>
    		<section>
    			<p>
    				<span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>Do what I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    			</p>
    		</section>
    	</body>
    </html>

    """

  Scenario: HTML Output of a simple Song with one Section and two lines
    Given the parsetree
    """
    [
      [
        ['[D]', 'Do what I say, ', '[Em]', 'or I will suffer'],
        ['Do what ', '[D]', 'I say, ', '[Em]', 'or I will suffer']
      ]
    ]
    """

    When I format it as HTML
    Then the output should be
    """
    <!DOCTYPE html>
    <html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
    	<head>
    		<meta http-equiv='Content-type'     content='text/html; charset=UTF-8' />
    		<title>Song-Sheet</title>
    		<meta http-equiv='content-language' content='en' />
    		<style>
    			p {
    				line-height: 300%;
    				max-width: 30em;
    			}
    			.chord {
    				position: relative;
    			}
    			.chord span {
    				position: absolute;
    				bottom: 40%;
    				font-size: 66%;
    				font-weight: bold;
    			}
    			.chord .brackets {
    				display: none;
    			}
    		</style>
    	</head>
    	<body>
    		<header>
    			<h1>Song-Sheet</h1>
    		</header>
    		<section>
    			<p>
    				<span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>Do what I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    				Do what <span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    			</p>
    		</section>
    	</body>
    </html>

    """

  Scenario: HTML Output of a simple Song with two Section and two lines
    Given the parsetree
    """
    [
      [
        ['[D]', 'Do what I say, ', '[Em]', 'or I will suffer'],
        ['Do what ', '[D]', 'I say, ', '[Em]', 'or I will suffer']
      ],
      [
        ['[D]', 'Do what I say, ', '[Em]', 'or I will suffer'],
        ['Do what ', '[D]', 'I say, ', '[Em]', 'or I will suffer']
      ]
    ]
    """

    When I format it as HTML
    Then the output should be
    """
    <!DOCTYPE html>
    <html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
    	<head>
    		<meta http-equiv='Content-type'     content='text/html; charset=UTF-8' />
    		<title>Song-Sheet</title>
    		<meta http-equiv='content-language' content='en' />
    		<style>
    			p {
    				line-height: 300%;
    				max-width: 30em;
    			}
    			.chord {
    				position: relative;
    			}
    			.chord span {
    				position: absolute;
    				bottom: 40%;
    				font-size: 66%;
    				font-weight: bold;
    			}
    			.chord .brackets {
    				display: none;
    			}
    		</style>
    	</head>
    	<body>
    		<header>
    			<h1>Song-Sheet</h1>
    		</header>
    		<section>
    			<p>
    				<span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>Do what I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    				Do what <span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    			</p>
    			<p>
    				<span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>Do what I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    				Do what <span class='chord'><span><span class='brackets'>[</span>D<span class='brackets'>]</span></span>I say, </span><span class='chord'><span><span class='brackets'>[</span>Em<span class='brackets'>]</span></span>or I will suffer</span><br />
    			</p>
    		</section>
    	</body>
    </html>

    """
