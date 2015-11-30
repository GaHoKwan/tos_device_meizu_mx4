.class public Landroid/content/res/flymetheme/LauncherConfigHelper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LauncherConfigHelper.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"

.field public static final TAG_ROOT:Ljava/lang/String; = "meizu_theme_values"


# instance fields
.field public final DRAW_DATE:Ljava/lang/String;

.field public final DRAW_SHADOW:Ljava/lang/String;

.field public final LOCKSCREEN_CHARGING_ANIM:Ljava/lang/String;

.field private mAttrName:Ljava/lang/String;

.field private mCurrentFlag:Z

.field private mLauncherConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreTag:Ljava/lang/String;

.field private mZipThemeManager:Landroid/content/res/flymetheme/ZipManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 22
    const-string v0, "draw_date"

    iput-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->DRAW_DATE:Ljava/lang/String;

    .line 23
    const-string v0, "draw_shadow"

    iput-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->DRAW_SHADOW:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "lockscreen_charging_anim"

    iput-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->LOCKSCREEN_CHARGING_ANIM:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mLauncherConfig:Ljava/util/HashMap;

    .line 32
    iput-object v2, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mPreTag:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mAttrName:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mCurrentFlag:Z

    .line 37
    iput-boolean v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mCurrentFlag:Z

    .line 38
    invoke-virtual {p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->load()V

    .line 39
    return-void
.end method

.method private initFlymeThemeZipManager()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mZipThemeManager:Landroid/content/res/flymetheme/ZipManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/content/res/flymetheme/ZipManager;

    invoke-direct {v0}, Landroid/content/res/flymetheme/ZipManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mZipThemeManager:Landroid/content/res/flymetheme/ZipManager;

    .line 59
    :cond_0
    return-void
.end method

.method private parseConfigFromXml(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 66
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 67
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 68
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 69
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 71
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "FlymeTheme-Liyd"

    const-string/jumbo v5, "themeValueParser"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FlymeTheme-Liyd"

    const-string/jumbo v5, "themeValueParser"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mPreTag:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 124
    .local v0, "con":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mPreTag:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/String;

    .end local v0    # "con":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    .line 126
    .restart local v0    # "con":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mAttrName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->setLauncherConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mPreTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 111
    .local v0, "tagName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mCurrentFlag:Z

    .line 116
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .end local v0    # "tagName":Ljava/lang/String;
    :cond_1
    move-object v0, p3

    .line 110
    goto :goto_0
.end method

.method public getLauncherConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mLauncherConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->load()V

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mLauncherConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "is":Ljava/io/InputStream;
    iget-object v2, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mZipThemeManager:Landroid/content/res/flymetheme/ZipManager;

    if-nez v2, :cond_0

    .line 47
    invoke-direct {p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->initFlymeThemeZipManager()V

    .line 49
    :cond_0
    const-string/jumbo v1, "theme_values.xml"

    .line 50
    .local v1, "resPath":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mZipThemeManager:Landroid/content/res/flymetheme/ZipManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/flymetheme/ZipManager;->getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->parseConfigFromXml(Ljava/io/InputStream;)V

    .line 54
    :cond_1
    return-void
.end method

.method public setLauncherConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mLauncherConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 94
    .local v0, "tagName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mCurrentFlag:Z

    .line 99
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mCurrentFlag:Z

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mAttrName:Ljava/lang/String;

    .line 105
    :cond_1
    iput-object p2, p0, Landroid/content/res/flymetheme/LauncherConfigHelper;->mPreTag:Ljava/lang/String;

    .line 106
    return-void

    .end local v0    # "tagName":Ljava/lang/String;
    :cond_2
    move-object v0, p3

    .line 93
    goto :goto_0
.end method
