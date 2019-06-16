#! /usr/bin/env python  
# -*- coding: utf-8 -*-  

' NCRE Test Module '

__author__ = 'MR kuan'

#ref https://blog.csdn.net/kozazyh/article/details/79321505
# http://docs.jinkan.org/docs/jinja2/templates.html
from jinja2 import Environment, FileSystemLoader  
import os  
import yaml  
import codecs  

def get_adr(adr):
    return os.path.join( os.path.dirname(os.path.realpath(__file__)),adr)

def generatefile(srcfile,tplpath,tplfile):
    #Load data from YAML into Python dictionary ,as utf -8
    f = open(srcfile,'r',encoding='utf-8')
    cont = f.read()
    config_data = yaml.load(cont)  
    
    #Load Jinja2 template  
    env = Environment(loader = FileSystemLoader(tplpath), trim_blocks=True, lstrip_blocks=True)  
    template = env.get_template(tplfile)
    
    #Render the template with data and print the output  
    return template.render(config_data) 

if __name__=='__main__':
    content = generatefile(get_adr('main_cfg.yaml'),os.path.dirname(os.path.realpath(__file__)),'au-misra3.tpl')
    file=open(get_adr('au-misra3.lnt'),'w',encoding='utf-8')  
    file.write(content)
    file.close()