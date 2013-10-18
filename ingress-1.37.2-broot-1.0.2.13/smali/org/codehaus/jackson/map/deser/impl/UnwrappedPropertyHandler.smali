.class public Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 34
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 35
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 37
    invoke-virtual {v0, v3, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_0
    return-object p3
.end method
