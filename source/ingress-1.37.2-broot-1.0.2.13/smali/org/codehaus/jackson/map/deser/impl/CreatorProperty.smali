.class public Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SourceFile"


# instance fields
.field protected final _annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

.field protected final _injectableValueId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 66
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 67
    iput p6, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_propertyIndex:I

    .line 68
    iput-object p7, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 73
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 74
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    return-object v0
.end method

.method public getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public bridge synthetic withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
