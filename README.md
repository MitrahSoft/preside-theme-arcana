# PresideCMS Extension: Arcana Preside Theme

This is a free Preside CMS Theme. You can use this theme for your website or use it as a reference for developing a Preside theme. The theme will show you the basic concept of Preside CMS, how to create objects, how to overwrite templates and etc. It's really a good starter template for the beginners.

## Installation

Install the extension to your application via either of the methods detailed below (Git submodule / CommandBox) and then enable the extension by opening up the Preside developer console and entering:

    extension enable preside-theme-arcana
    reload all

## How it works

The extension is a free Preside Theme, once this installed you can now have a freedom to configure the template same as you see on this link https://html5up.net/arcana. The theme has a different available widgets for you to customize the website, Gigantic Heading,Quest Picker,Decisive Picker,Portfolio Picker,linkPicker, and Adjacent Picker. Also, You can configure everything on the template from text on the logo to footer links and social media icons, you can do that via Preside Global Settings.

	- Gigantic heading 	: A gigantic heading you can use for whatever.
	- Quest picker 		: Use for add Quest link.
	- Decisive picker 	: Use to mention Important points.
	- Portfolio picker 	: Manage portfolio.
	- linkPicker		: Use to add footer and social links.
	- Adjacent picker 	: Use for mention Important points in every pages sidebar content.

## Setup

```
User can choose any of the widgets mentioned above from the widget picker in ckeditor.
```
![widgetPicker](screens/widgetPicker.JPG)

Selecting  any widget will display all details related to the widget in user friendly manner, user can fill them. So, the details will be rendered in user side.

~~~
To use Decisive picker,Portfolio picker widgets,first the user has to provide contents in the Data manager.
~~~
![dataManager](screens/dataManager.JPG)

![addDetails](screens/addDetails.JPG)

~~~
Also user can make use of Preside's form builder, It will get rendered in user side.
~~~
![formBuilder](screens/formBuilder.JPG)

### Git Submodule method

From the root of your application, type the following command:

	git submodule add https://github.com/MitrahSoft/preside-theme-arcana.git application/extensions/preside-theme-arcana

### CommandBox (box.json) method

From the root of your application, type the following command:

    box install pixl8/preside-theme-arcana