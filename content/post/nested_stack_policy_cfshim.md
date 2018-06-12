---
title: "Nested_stack_policy_cfshim"
date: 2018-05-19T21:02:44+10:00
draft: true
---

Cloudformation is an afterthought for Amazon. There is a lot of things poorly or not properly implemented when it comes to Cloudformation. Which can be a problem in my line of work.

One such thing that is very poorly implemented is stack policies, there is a **lot** wrong with their implementation in Cloudformation.

## What are stack policies?

Stack policies are policies that allow you to control how cloudformation stacks are changed. They can be quite useful in preventing the accidental removal of certain services through re-deployment. It wouldn't be good if you accidentally removed your production database during a deploy. Stack policies help us with this exact issue.

Stack policies can be applied to a root Cloudformation stack without any issue, which is useful but there is one problem. Due to the size limit on a single Cloudformation template, on larger projects you need to start creating nested sub-stacks to partition the code into other Cloudformation template files. The problem with doing this is, there is currently **no way** to create and apply a stack policy to a nested stack through vanilla Cloudformation.

## CFShim

This is where [CFShim](https://github.com/TheSkorm/cf-shim) comes in, it's purely designed to help implement features in Cloudformation that are missing. It's nothing more then a small wrapper around the Boto3 library that exposes an interface to Cloudformation we can use.

<!--TODO: Get code that you implemented at work as an example -->
