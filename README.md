# ios-decal-proj4
### **WaterSaver**

##### Authors <br />
•	Jay Iyer

##### Purpose <br />
•	WaterSaver helps track people’s daily water usage and conserve water, especially during the current California drought.

##### Features <br />
•	Users can record their water usage for a variety of water-intensive tasks <br />
  o	Depending on type of task, determine amount of water used through time of water usage / a counter / etc. <br />
•	Users can see what percentage of the recommended daily water usage the user has consumed <br />
•	Users can see a graph of their weekly water usage <br />
  o	Average amount of water used per week <br />
  o	Average percentage of recommended daily water usage <br />

##### Control Flow <br />
•	Users are initially presented with a circular chart showing what percentage of recommended daily water usage they have already consumed <br />
•	There will be a button below this circle to add water usage <br />
•	Once the user taps this button, the user will be presented with a number of scenarios for recording their water usage <br /> 
  o	The amount of time spent in a bathtub <br />
  o	The number of minutes a dishwasher has been used <br />
  o	The amount of time a faucet has been running <br />
  o	The amount of time a garden hose has been running <br />
  o	The amount of time a shower has been used <br />
  o	The number of minutes a sprinkler was in use <br />
  o	The number of toilet flushes <br />
  o	The number of minutes a washing machine was in use <br />
•	Once the user records their corresponding water usage, their percentage of recommended daily water usage will increase. The user will be directed back to the updated front-page circular chart. <br />
•	In another menu, the user can see a graph of water usage percentages for the past week, along with their average amount of water used per week and their average percentage of recommended daily water usage. <br />

##### Implementation <br />
•	Model <br />
  o	User.swift <br />
•	View <br />
  o	Main.storyboard <br />
  o	CircleGraphView.swift <br />
  o	CircleDrawingView.swift <br />
•	Controller <br />
  o	ViewController.swift <br />
  o	MainViewController.swift <br />
  o	GraphsViewController.swift <br />
  o	AboutViewController.swift <br />
  o	UsageViewController.swift <br />
  o	UsageViewCell.swift <br />
  o	CounterViewController.swift <br />
  o	TimerViewController.swift <br />
