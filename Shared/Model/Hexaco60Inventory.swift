//
//  HexacoTest.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//
//  Refer to: https://people.ucalgary.ca/~kibeom/index.html

import Foundation

struct Hexaco60Inventory {
    static let questions = [
        // 1
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .o,
            text: "He/she would be quite bored by a visit to an art gallery."),
        // 2
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .c,
            text: "He/she plans ahead and organizes things, to avoid scrambling at the last minute."),
        // 3
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "He/she rarely holds a grudge, even against people who have badly wronged him/her."),
        // 4
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "He/she feels reasonably satisfied with himself/herself overall."),
        // 5
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "He/she would feel afraid if he/she had to travel in bad weather conditions."),
        // 6
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .h,
            text: "He/she wouldn't use flattery to get a raise or promotion at work, even if he/she thought it would succeed."),
        // 7
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .o,
            text: "He/she is interested in learning about the history and politics of other countries."),
        // 8
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .c,
            text: "He/she often pushes himself/herself very hard when trying to achieve a goal."),
        // 9
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .a,
            text: "People sometimes say that he/she is too critical of others."),
        // 10
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .x,
            text: "He/she rarely expresses his/her opinions in group meetings."),
        // 11
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "He/she worries about little things."),
        // 12
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "If he/she knew that he/she could never get caught, he/she would be willing to steal a million dollars."),
        // 13
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .o,
            text: "He/she would enjoy creating a work of art, such as a novel, a song, or a painting."),
        // 14
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "When working on something, he/she doesn't pay much attention to small details."),
        // 15
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .a,
            text: "People sometimes think that he/she is too stubborn."),
        // 16
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "He/she prefers jobs that involve active social interaction to those that involve working alone."),
        // 17
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "When he/she suffers from a painful experience, he/she needs someone to make him/her feel comfortable."),
        // 18
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .h,
            text: "Having a lot of money is not especially important to him/her."),
        // 19
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .o,
            text: "He/she thinks that paying attention to radical ideas is a waste of time."),
        // 20
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "He/she makes decisions based on the feeling of the moment rather than on careful thought."),
        // 21
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .a,
            text: "People think of him/her as someone who has a quick temper."),
        // 22
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "On most days, he/she feels cheerful and optimistic."),
        // 23
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "He/she feels like crying when he/she sees other people crying."),
        // 24
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "He/she thinks that he/she is entitled to more respect than the average person is."),
        // 25
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .o,
            text: "If he/she had the opportunity, he/she would like to attend a classical music concert."),
        // 26
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "When working, he/she sometimes has difficulties due to being disorganized."),
        // 27
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "His/her attitude toward people who have treated him/her badly is “forgive and forget”."),
        // 28
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .x,
            text: "He/she feels that he/she is an unpopular person."),
        // 29
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "When it comes to physical danger, he/she is very fearful."),
        // 30
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "If he/she wants something from someone, he/she will laugh at that person’s worst jokes."),
        // 31
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .o,
            text: "He/she has never really enjoyed looking through an encyclopedia."),
        // 32
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "He/she does only the minimum amount of work needed to get by."),
        // 33
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "He/she tends to be lenient in judging other people."),
        // 34
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "In social situations, he/she is usually the one who makes the first move."),
        // 35
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .e,
            text: "He/she worries a lot less than most people do."),
        // 36
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .h,
            text: "He/she would never accept a bribe, even if it were very large."),
        // 37
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .o,
            text: "He/she has a good imagination."),
        // 38
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .c,
            text: "He/she always tries to be accurate in his/her work, even at the expense of time."),
        // 39
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "He/she is usually quite flexible in his/her opinions when people disagree with him/her."),
        // 40
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "The first thing that he/she always does in a new place is to make friends."),
        // 41
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .e,
            text: "He/she can handle difficult situations without needing emotional support from anyone else."),
        // 42
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "He/she would get a lot of pleasure from owning expensive luxury goods."),
        // 43
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .o,
            text: "He/she likes people who have unconventional views."),
        // 44
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "He/she makes a lot of mistakes because he/she doesn’t think before he/she acts."),
        // 45
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "Most people tend to get angry more quickly than he/she does."),
        // 46
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .x,
            text: "Most people are more upbeat and dynamic than he/she generally is."),
        // 47
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .e,
            text: "He/she feels strong emotions when someone close to him/her is going away for a long time."),
        // 48
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "He/she wants people to know that he/she is an important person of high status."),
        // 49
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .o,
            text: "I don’t think of him/her as the artistic or creative type."),
        // 50
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .c,
            text: "People often call him/her a perfectionist."),
        // 51
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .a,
            text: "Even when people make a lot of mistakes, he/she rarely says anything negative."),
        // 52
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .x,
            text: "He/she sometimes feels that he/she is a worthless person."),
        // 53
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .e,
            text: "Even in an emergency he/she wouldn’t feel like panicking."),
        // 54
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .h,
            text: "He/she wouldn’t pretend to like someone just to get that person to do favors for him/her."),
        // 55
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .o,
            text: "He/she finds it boring to discuss philosophy."),
        // 56
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .c,
            text: "He/she prefers to do whatever comes to mind, rather than stick to a plan."),
        // 57
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .a,
            text: "When people tell him/her that he/she is wrong, his/her first reaction is to argue with them."),
        // 58
        HexacoInventoryItem(
            reversed: false,
            hexacoScale: .x,
            text: "When he/she is in a group of people, he/she is often the one who speaks on behalf of the group."),
        // 59
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .e,
            text: "He/she remains unemotional even in situations where most people get very sentimental."),
        // 60
        HexacoInventoryItem(
            reversed: true,
            hexacoScale: .h,
            text: "He/she’d be tempted to use counterfeit money, if he/she were sure he/she could get away with it."),
    ]
    
    var score: Hexaco60InventoryScore
}
