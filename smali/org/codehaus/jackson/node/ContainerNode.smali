.class public abstract Lorg/codehaus/jackson/node/ContainerNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "SourceFile"


# instance fields
.field _nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final nullNode()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method
