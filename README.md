# ios-decal-proj4
### **WaterSaver**

##### Author <br />
* Jay Iyer

##### Purpose <br />
* WaterSaver helps track people’s daily water usage and conserve water,
especially during the current California drought.

##### Features <br />
* Users can record their water usage for many water-intensive tasks <br />
* Depending on type of task, determine amount of water used through time of 
water usage / a counter / etc. <br />
* Users can see what percentage of the recommended daily water usage the user 
has consumed <br />
* Users can see a progress view of their weekly water usage <br />
* Average amount of water used per week <br />
* Average percentage of recommended daily water usage <br />

##### Control Flow <br />
* Users are initially presented with a basically-empty page titled "Your Uses 
of Water," along with a "Stats" button and a "+" button for adding usage. <br />
  * Once the user taps "+" button button, the user will be presented with many 
scenarios for recording their water usage <br /> 
  * The amount of time spent in a bathtub <br />
  * The number of minutes a dishwasher has been used <br />
  * The amount of time a faucet has been running <br />
  * The amount of time a garden hose has been running <br />
  * The amount of time a shower has been used <br />
  * The number of minutes a sprinkler was in use <br />
  * The number of toilet flushes <br />
  * The number of minutes a washing machine was in use <br />
* Once the user records their corresponding water usage, their percentage of 
recommended daily water usage will increase. The user will be directed back to 
the updated front page with a list of water usages. <br />
* In another menu, the user can see his or her gallons of water used along with
a progress view that shows what percentage of his or her total daily allowed 
gallons of water he or she has used. <br />

##### Implementation <br />
* Model <br />
  * Task.swift <br />
* View <br />
  * Main.storyboard <br />
  * LaunchScreen.storyboard <br />
* Controller <br />
  * StatsViewController.swift <br />
  * AddTaskViewController.swift <br />
  * TaskTableViewController.swift <br />
