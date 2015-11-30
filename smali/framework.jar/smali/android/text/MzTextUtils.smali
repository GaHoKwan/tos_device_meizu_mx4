.class public Landroid/text/MzTextUtils;
.super Ljava/lang/Object;
.source "MzTextUtils.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "wangying@SDK.TextView.Feature add for TextView"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CH_NON_ENDERS:Ljava/lang/String; = "$([{\u00a5\u2018\u201c\u2035\u3008\u300a\u300c\u300e\u3010\u3014\u3016\u301d\ufe35\ufe37\ufe39\ufe3b\ufe3d\ufe3f\ufe41\ufe43\ufe59\ufe5b\ufe5d\uff04\uff08\uff0e\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff3b\uff58\uff5b\uffe1\uffe5"

.field private static final CH_NON_STARTERS:Ljava/lang/String; = "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

.field protected static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field protected static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EN_NON_ENDERS:Ljava/lang/String; = "([{\u00ab"

.field private static final EN_NON_STARTERS:Ljava/lang/String; = ")]}%\u00b0\u00b7\u00bb!?/."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 131
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 132
    if-nez p1, :cond_0

    .line 133
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 150
    goto :goto_0

    .line 155
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 156
    if-nez p1, :cond_0

    .line 157
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 180
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 183
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 186
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 189
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 192
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 195
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 198
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 202
    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 157
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method public static final isLineBreak([CIIIZ)Z
    .locals 6
    .param p0, "chs"    # [C
    .param p1, "index"    # I
    .param p2, "st"    # I
    .param p3, "en"    # I
    .param p4, "hasIdeographic"    # Z

    .prologue
    const/16 v5, 0x2e80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    if-gez p2, :cond_0

    .line 78
    const/4 p2, 0x0

    .line 80
    :cond_0
    array-length v4, p0

    if-le p3, v4, :cond_1

    .line 81
    array-length p3, p0

    .line 83
    :cond_1
    if-lt p1, p2, :cond_2

    if-lt p1, p3, :cond_4

    :cond_2
    move v2, v3

    .line 112
    :cond_3
    :goto_0
    return v2

    .line 87
    :cond_4
    aget-char v0, p0, p1

    .line 88
    .local v0, "c":C
    const/16 v4, 0x20

    if-eq v0, v4, :cond_3

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    .line 92
    add-int/lit8 v4, p1, 0x1

    if-ge v4, p3, :cond_a

    add-int/lit8 v4, p1, 0x1

    aget-char v1, p0, v4

    .line 94
    .local v1, "c2":C
    :goto_1
    const/16 v4, 0x2f

    if-eq v0, v4, :cond_5

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    :cond_6
    if-nez p4, :cond_8

    if-lt v0, v5, :cond_7

    invoke-static {v0, v2}, Landroid/text/MzTextUtils;->isIdeographic(CZ)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-lt v1, v5, :cond_b

    invoke-static {v1, v3}, Landroid/text/MzTextUtils;->isIdeographic(CZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 100
    :cond_8
    const-string v4, "([{\u00ab"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, ")]}%\u00b0\u00b7\u00bb!?/."

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, "$([{\u00a5\u2018\u201c\u2035\u3008\u300a\u300c\u300e\u3010\u3014\u3016\u301d\ufe35\ufe37\ufe39\ufe3b\ufe3d\ufe3f\ufe41\ufe43\ufe59\ufe5b\ufe5d\uff04\uff08\uff0e\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff3b\uff58\uff5b\uffe1\uffe5"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    const-string v4, "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    :cond_9
    move v2, v3

    .line 102
    goto :goto_0

    .end local v1    # "c2":C
    :cond_a
    move v1, v3

    .line 92
    goto :goto_1

    .line 108
    .restart local v1    # "c2":C
    :cond_b
    const-string v4, "!%),.:;?]}\u00a8\u00b7\u02c7\u02c9\u2013\u2014\u2016\u2019\u201d\u2025\u2026\u2027\u2030\u2032\u2103\u2236\u2574\u25cf\u3000\u3001\u3002\u3003\u3005\u3009\u300b\u300d\u300f\u3011\u3015\u3017\u301e\ufe30\ufe31\ufe33\ufe34\ufe36\ufe38\ufe3a\ufe3c\ufe3e\ufe40\ufe42\ufe44\ufe4f\ufe50\ufe51\ufe52\ufe54\ufe55\ufe56\ufe57\ufe5a\ufe5c\uff01\uff02\uff05\uff07\uff09\uff0c\uff0e\uff1a\uff1b\uff1f\uff2f\uff3d\uff40\uff5c\uff5d\uff5e\uffe0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, ")]}%\u00b0\u00b7\u00bb!?/."

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    move v2, v3

    .line 112
    goto :goto_0
.end method

.method public static removeComposing(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 25
    if-nez p0, :cond_1

    .line 26
    const/4 p0, 0x0

    .line 35
    :cond_0
    :goto_0
    return-object p0

    .line 28
    :cond_1
    instance-of v2, p0, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 29
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "start":I
    move-object v2, p0

    .line 30
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 31
    .local v0, "end":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    if-gt v1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
