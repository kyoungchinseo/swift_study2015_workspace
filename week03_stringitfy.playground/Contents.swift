//: Playground - noun: a place where people can play

import UIKit

enum JSONNode {
    case NullNode
    case StringNode(String)
    case NumberNode(Float)
    case BoolNode(Bool)
    case ArrayNode([JSONNode])
    case ObjectNode([String: JSONNode])
}


func jsonStringify(json: JSONNode)->String {
    var str:String = "";
    
    switch (json)
    {
    case .BoolNode(let boolean):
        str = String(boolean);
    case .NullNode:
        str = "nil"
    case .NumberNode(let floatValue):
        str = String(floatValue)
    case .StringNode(let strValue):
        str = "\""+strValue+"\""
    case .ArrayNode(let node):
        var count = node.count
        str = "["
        for element in node {
           str += jsonStringify(element)
           count--
            if (count > 0) {
                str += ","
            }
        }
        str += "]"
    case .ObjectNode(let object):
        var count = object.count
        str = "["
        for (key, value) in object {
            str = str + "\"" + String(key) + "\"" + ":" + jsonStringify(value)
            count--
            if (count>0) {
                str += ","
            }
        }
        str += "]"
    }
    return str
}

let xbool: JSONNode = JSONNode.BoolNode(false)
let xfloat: JSONNode = JSONNode.NumberNode(10.0)
let xString: JSONNode = JSONNode.StringNode("hello")
let xarray: JSONNode = JSONNode.ArrayNode(
    [JSONNode.NumberNode(10.0),
        JSONNode.StringNode("hello"),
        JSONNode.BoolNode(false)]
)
let xobject: JSONNode = JSONNode.ObjectNode(
    ["boolean":.BoolNode(true), "number":.NumberNode(12.12)])

let xbool2: JSONNode = JSONNode.BoolNode(true)

var ret1_1 = jsonStringify(xbool)
var ret1_2 = jsonStringify(xbool2)
var ret2 = jsonStringify(xfloat)
var ret3 = jsonStringify(xString)
var ret4 = jsonStringify(xarray)
var ret5 = jsonStringify(xobject)









