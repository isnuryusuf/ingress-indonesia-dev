.class public Lcom/badlogic/gdx/utils/DataInput;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# instance fields
.field private chars:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 15
    return-void
.end method

.method private readUtf8_slow(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 69
    :goto_0
    shr-int/lit8 v1, p3, 0x4

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_1
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    and-int/lit16 p3, v1, 0xff

    goto :goto_0

    .line 78
    :pswitch_1
    int-to-char v1, p3

    aput-char v1, v0, p2

    goto :goto_1

    .line 82
    :pswitch_2
    and-int/lit8 v1, p3, 0x1f

    shl-int/lit8 v1, v1, 0x6

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    goto :goto_1

    .line 85
    :pswitch_3
    and-int/lit8 v1, p3, 0xf

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    goto :goto_1

    .line 91
    :cond_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public readInt(Z)I
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    .line 20
    and-int/lit8 v0, v1, 0x7f

    .line 21
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    .line 23
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 24
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    .line 26
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    .line 27
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    .line 29
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    .line 30
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    .line 32
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataInput;->readInt(Z)I

    move-result v0

    .line 44
    packed-switch v0, :pswitch_data_0

    .line 50
    add-int/lit8 v4, v0, -0x1

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    array-length v0, v0

    if-ge v0, v4, :cond_0

    new-array v0, v4, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    move v0, v1

    move v2, v1

    .line 56
    :goto_0
    if-ge v2, v4, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 58
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_1

    .line 59
    add-int/lit8 v3, v2, 0x1

    int-to-char v6, v0

    aput-char v6, v5, v2

    move v2, v3

    goto :goto_0

    .line 46
    :pswitch_0
    const/4 v0, 0x0

    .line 63
    :goto_1
    return-object v0

    .line 48
    :pswitch_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 62
    :cond_1
    if-ge v2, v4, :cond_2

    invoke-direct {p0, v4, v2, v0}, Lcom/badlogic/gdx/utils/DataInput;->readUtf8_slow(III)V

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
