# ios-decal-proj4
WaterSaver

Authors
•	Jay Iyer

Purpose
•	WaterSaver helps track people’s daily water usage and conserve water, especially during the current California drought.

Features
•	Users can record their water usage for a variety of water-intensive tasks
  o	Depending on type of task, determine amount of water used through time of water usage / a counter / etc.
•	Users can see what percentage of the recommended daily water usage the user has consumed
•	Users can see a graph of their weekly water usage
  o	Average amount of water used per week
  o	Average percentage of recommended daily water usage

Control Flow
•	Users are initially presented with a circular chart showing what percentage of recommended daily water usage they have already consumed
•	There will be a button below this circle to add water usage
•	Once the user taps this button, the user will be presented with a number of scenarios for recording their water usage 
  o	The amount of time spent in a bathtub
  o	The number of minutes a dishwasher has been used
  o	The amount of time a faucet has been running
  o	The amount of time a garden hose has been running
  o	The amount of time a shower has been used
  o	The number of minutes a sprinkler was in use
  o	The number of toilet flushes
  o	The number of minutes a washing machine was in use
•	Once the user records their corresponding water usage, their percentage of recommended daily water usage will increase. The user will be directed back to the updated front-page circular chart.
•	In another menu, the user can see a graph of water usage percentages for the past week, along with their average amount of water used per week and their average percentage of recommended daily water usage.

Implementation
•	Model
  o	User.swift
•	View
  o	Main.storyboard
  o	CircleGraphView.swift
  o	CircleDrawingView.swift
•	Controller
  o	ViewController.swift
  o	MainViewController.swift
  o	GraphsViewController.swift
  o	AboutViewController.swift
  o	UsageViewController.swift
  o	UsageViewCell.swift
  o	CounterViewController.swift
  o	TimerViewController.swift
