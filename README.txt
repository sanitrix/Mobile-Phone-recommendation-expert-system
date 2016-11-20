==================  Mobile Recommendation System  ================

How to run?

1. Run start.bat through CLIPS command line tool.
	-> Open CLIPSIDE64.exe
	-> type "(batch start.bat)"
2. The expert system will ask you about your preferences one by one. You can select from one of the provided options.
3. After selecting your preferences, run getresults.bat.
	-> type "(batch getresults.bat)"
4. The list of phones which satisfy ANY(atleast one) of your preferences will be displayed sorted by relevance.


A brief description

1. All facts(data of mobile phones and their features) are stored in facts.CLP.
2. All the rules are defined in rules.CLP.
3. The required templates and functions are defined in main.CLP.
4. start.bat contains initialization commands like 
	(clear)
	(load main.CLP)
	(load facts.CLP)
	(load rules.CLP)
	(watch all)
	(reset)					
	(run)
	which includes taking user input.
5. getresults.bat displays the matched phone results in command line.