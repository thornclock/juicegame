### NOTE - this is likely how dialogue will be managed, but still it may change. Multiple .json files could also be used, to keep things organized (like events for different chapeters being in different files).

```json
{
    "event_name":
    {
        "en":
        [
            ["Person A", "A's line of text. Can be multiple sentences."],
            ["Person A", "More of A's text"],
            ["Person B", "More text"]
        ],
        "ko":
        [
            ["Person A's name (in korean)", "A's translated text."],
            ["Person A's name (in korean)", "More of A's translated text"],
            ["Person B's name (in korean)", "New translated text by person B"]
        ]
    },

    "example_intro_event":
    {
        "en":
        [
            ["Player", "I ran the report and it seems like there is"],
            ["Player", "something wrong with the machine."],
            ["Mike", "I'll take a look."],
            ["Player", "Thanks."]
        ]
    }
}
```

Each `"event_name"` is the name of an event. For example, if the player reaches a part of the map for the first time and some text is displayed, all of the text would belong to one event.

In each `"evene_name"`, there are entries called `"en"` (English, the ISO 639-1 code), `"ko"` (Korean), and so on. These specify the languages that the event is translated into. If we do not have an event translated, we could just not place anything there, like for `"example_intro_event"` which lacks Korean translation.

In each language entry is a list of arrays of strings. These contain the speaker's name and their dialogue. Every line will be shown on screen at once, so if a line is too long it can be broken up into a second line. See `"example_intro_event"`, where the player's first line is split into 2 lines. We don't know how long is "too long" (we don't know how much text can be on screen yet) so this is just an example.
