# ios-decal-proj4
### **WaterSaver**

##### Authors <br />
* Jay Iyer

##### Purpose <br />
* WaterSaver helps track people’s daily water usage and conserve water, especially during the current California drought.

##### Features <br />
* Users can record their water usage for a variety of water-intensive tasks <br />
  * Depending on type of task, determine amount of water used through time of water usage / a counter / etc. <br />
* Users can see what percentage of the recommended daily water usage the user has consumed <br />
* Users can see a graph of their weekly water usage <br />
  * Average amount of water used per week <br />
  * Average percentage of recommended daily water usage <br />

##### Control Flow <br />
* Users are initially presented with a circular chart showing what percentage of recommended daily water usage they have already consumed <br />
* There will be a button below this circle to add water usage <br />
* Once the user taps this button, the user will be presented with a number of scenarios for recording their water usage <br /> 
  * The amount of time spent in a bathtub <br />
  * The number of minutes a dishwasher has been used <br />
  * The amount of time a faucet has been running <br />
  * The amount of time a garden hose has been running <br />
  * The amount of time a shower has been used <br />
  * The number of minutes a sprinkler was in use <br />
  * The number of toilet flushes <br />
  * The number of minutes a washing machine was in use <br />
* Once the user records their corresponding water usage, their percentage of recommended daily water usage will increase. The user will be directed back to the updated front-page circular chart. <br />
* In another menu, the user can see a graph of water usage percentages for the past week, along with their average amount of water used per week and their average percentage of recommended daily water usage. <br />

##### Implementation <br />
* Model <br />
  * User.swift <br />
* View <br />
  * Main.storyboard <br />
  * CircleGraphView.swift <br />
  * CircleDrawingView.swift <br />
* Controller <br />
  * ViewController.swift <br />
  * MainViewController.swift <br />
  * GraphsViewController.swift <br />
  * AboutViewController.swift <br />
  * UsageViewController.swift <br />
  * UsageViewCell.swift <br />
  * CounterViewController.swift <br />
  * TimerViewController.swift <br />
