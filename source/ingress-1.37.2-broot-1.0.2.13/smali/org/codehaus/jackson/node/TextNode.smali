.class public final Lorg/codehaus/jackson/node/TextNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "SourceFile"


# static fields
.field static final EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;


# instance fields
.field final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    return-void
.end method

.method protected static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x22

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .parameter

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lorg/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lorg/codehaus/jackson/node/TextNode;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/TextNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 232
    check-cast p1, Lorg/codehaus/jackson/node/TextNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
