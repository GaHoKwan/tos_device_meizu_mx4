.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 48
    .local v3, "fragment":I
    if-lez v3, :cond_0

    .line 49
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 52
    :cond_0
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 53
    .local v4, "query":I
    if-lez v4, :cond_1

    .line 54
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_1
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 58
    .local v2, "filenamePos":I
    if-ltz v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 66
    .local v0, "dotPos":I
    if-ltz v0, :cond_3

    .line 67
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .end local v0    # "dotPos":I
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "filenamePos":I
    .end local v3    # "fragment":I
    .end local v4    # "query":I
    :goto_1
    return-object v5

    .restart local v2    # "filenamePos":I
    .restart local v3    # "fragment":I
    .restart local v4    # "query":I
    :cond_2
    move-object v1, p0

    .line 58
    goto :goto_0

    .line 72
    .end local v2    # "filenamePos":I
    .end local v3    # "fragment":I
    .end local v4    # "query":I
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static getSpecialMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p0, :cond_b

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string/jumbo v0, "wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "audio/x-ms-wma"

    .line 142
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const-string/jumbo v0, "ra"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_1
    const-string v0, "audio/x-pn-realaudio"

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 127
    const-string v0, "audio/dts"

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 129
    const-string v0, "audio/ac3"

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "asx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 131
    const-string/jumbo v0, "video/x-ms-asf"

    goto :goto_0

    .line 132
    :cond_5
    const-string/jumbo v0, "wm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 133
    const-string/jumbo v0, "video/x-ms-wm"

    goto :goto_0

    .line 134
    :cond_6
    const-string/jumbo v0, "wmx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 135
    const-string/jumbo v0, "video/x-ms-wmx"

    goto :goto_0

    .line 136
    :cond_7
    const-string/jumbo v0, "wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "asf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 137
    :cond_8
    const-string/jumbo v0, "video/x-ms-asf"

    goto :goto_0

    .line 138
    :cond_9
    const-string/jumbo v0, "rmvb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "rm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 139
    :cond_a
    const-string/jumbo v0, "video/vnd.rn-realmedia"

    goto :goto_0

    .line 142
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string/jumbo v2, "persist.sys.sesame"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "status":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 149
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getSpecialMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    .end local v0    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_7

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    .line 186
    const-string v1, "audio/x-ms-wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v1, "wma"

    .line 205
    :goto_0
    return-object v1

    .line 188
    :cond_0
    const-string v1, "audio/x-pn-realaudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    const-string/jumbo v1, "ra"

    goto :goto_0

    .line 190
    :cond_1
    const-string v1, "audio/dts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 191
    const-string v1, "dts"

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "audio/ac3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 193
    const-string v1, "ac3"

    goto :goto_0

    .line 194
    :cond_3
    const-string/jumbo v1, "video/x-ms-asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 195
    const-string v1, "asf"

    goto :goto_0

    .line 196
    :cond_4
    const-string/jumbo v1, "video/x-ms-wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 197
    const-string/jumbo v1, "wm"

    goto :goto_0

    .line 198
    :cond_5
    const-string/jumbo v1, "video/x-ms-wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 199
    const-string/jumbo v1, "wmx"

    goto :goto_0

    .line 200
    :cond_6
    const-string/jumbo v1, "video/vnd.rn-realmedia"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 201
    const-string/jumbo v1, "rmvb"

    goto :goto_0

    .line 205
    :cond_7
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_d

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    if-eqz p1, :cond_d

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 93
    const-string/jumbo v1, "wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "audio/x-ms-wma"

    .line 116
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const-string/jumbo v1, "ra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ram"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 96
    :cond_1
    const-string v1, "audio/x-pn-realaudio"

    goto :goto_0

    .line 97
    :cond_2
    const-string v1, "dts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 98
    const-string v1, "audio/dts"

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "ac3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 100
    const-string v1, "audio/ac3"

    goto :goto_0

    .line 101
    :cond_4
    const-string v1, "asx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 102
    const-string/jumbo v1, "video/x-ms-asf"

    goto :goto_0

    .line 103
    :cond_5
    const-string/jumbo v1, "wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 104
    const-string/jumbo v1, "video/x-ms-wm"

    goto :goto_0

    .line 105
    :cond_6
    const-string/jumbo v1, "wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 106
    const-string/jumbo v1, "video/x-ms-wmx"

    goto :goto_0

    .line 107
    :cond_7
    const-string/jumbo v1, "wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 108
    :cond_8
    const-string/jumbo v1, "video/x-ms-asf"

    goto :goto_0

    .line 109
    :cond_9
    const-string/jumbo v1, "rmvb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "rm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 110
    :cond_a
    const-string/jumbo v1, "video/vnd.rn-realmedia"

    goto :goto_0

    .line 111
    :cond_b
    const-string v1, "flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "f4v"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 112
    :cond_c
    const-string/jumbo v1, "video/flv"

    goto/16 :goto_0

    .line 116
    :cond_d
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string v1, "asx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rmvb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ram"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ac3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    const/4 v1, 0x1

    .line 173
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/octet-stream"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 228
    .local v1, "filename":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 229
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_1
    if-eqz v1, :cond_2

    .line 232
    move-object p2, v1

    .line 234
    :cond_2
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "newMimeType":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 237
    move-object p1, v2

    .line 249
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "newMimeType":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1

    .line 239
    :cond_4
    const-string/jumbo v3, "text/vnd.wap.wml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    const-string/jumbo p1, "text/plain"

    goto :goto_0

    .line 245
    :cond_5
    const-string v3, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    const-string p1, "application/xhtml+xml"

    goto :goto_0
.end method
