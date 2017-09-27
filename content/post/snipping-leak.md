{
	"title": "Snipping Leak",
	"description": "Did you know snipping Tool leaks your user data?",
	"tags":["privacy", "windows", "forensics"],
	"keywords":[
		"snipping tool",
		"rootkit.ty",
		"rootkitty",
		"forensic",
		"metadata",
		"leak",
		"analysis"
	],
	"catagories":[
		"forensics"
	],
	"date": "2017-09-28T09:28:27+10:00",
	"draft": true
}

Did you know that Windows inbuilt Snipping Tool leaks your user data? I didn't but it came as quite a shock to discover.

## JPEG Metadata
So the JPEG file format provides methods of storing metadata about various things. Everything from GeoLocation to the Serial number of the Camera. All This data is stored as EXIF, and it can be quite verbose.

Those not paying attention to their metadata may soon find themselves leaking quite a lot of personal and identifiable data.

## Snipping Tool
What even is Snipping Tool? Well Snipping tool is a inbuilt application included from Vista onwards by Microsoft. It allows easy screenshotting of a selected area and editing. It can be fairly useful.

But as with many things from Microsoft, it leaks quite a lot of metadata. Enough to identify a user from. It turns out once saved as a JPEG it will include EXIF data containing information such as:
	* User Profile Full Name
	* UUID

## UUID
For those of you who are not aware, a UUID stands for Universally unique identifier. This means that it is the unique identifier of your user account. It belongs only to one account, and can easily be traced back to you, by Microsoft.

## What does this mean?
Well it means that if you end up juggling multiple lives on one Windows computer, and happen to use Snipping tool AND save those images as JPEGs, you are leaving a method of tieing them all back to you.

It's also known that snipping tool is used a surprising amount by "Hackers" or people from HF. Often used to screenshot something, and [obscure sensitive information](twitter.com/HavocFred/status/560238421449641985) about it.

Theoretically the entire process of this could be automated, and you could probably make a greasemonkey script to do it on HF.

## Caveat
Luckily the default extension to save images under in Snipping tool is PNG, which does not leak this data. So the vasy majority of screenshots are not leaking identifiable information about the user.

Even though that is the case, one should always be careful when sharing images, especially JPEGs. The metadata can be extensive and even quite well hidden.
