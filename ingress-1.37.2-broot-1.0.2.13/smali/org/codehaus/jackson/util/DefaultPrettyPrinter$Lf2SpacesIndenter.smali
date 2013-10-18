.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/impl/Indenter;


# static fields
.field static final SPACES:[C

.field static final SYSTEM_LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    :try_start_0
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "\n"

    :cond_0
    sput-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    .line 259
    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 261
    sput-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 262
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 273
    sget-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 274
    add-int v0, p2, p2

    .line 275
    :goto_0
    if-le v0, v3, :cond_0

    .line 276
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v1, v2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 277
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 279
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v1, v2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 280
    return-void
.end method
