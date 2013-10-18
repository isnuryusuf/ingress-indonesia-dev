.class public final Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

.field final _context:Lorg/codehaus/jackson/map/DeserializationContext;

.field final _creatorParameters:[Ljava/lang/Object;

.field private _paramsNeeded:I

.field final _parser:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_parser:Lorg/codehaus/jackson/JsonParser;

    .line 43
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_context:Lorg/codehaus/jackson/map/DeserializationContext;

    .line 44
    iput p3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    .line 45
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public final assignParameter(ILjava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 87
    iget v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Any;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Any;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    .line 96
    return-void
.end method

.method public final bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    .line 100
    return-void
.end method

.method public final bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    .line 92
    return-void
.end method

.method protected final buffered()Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    return-object v0
.end method

.method protected final getParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 67
    if-eqz p1, :cond_1

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 70
    aget-object v2, p1, v0

    .line 71
    if-eqz v2, :cond_0

    .line 72
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public final inject([Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 7
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    aget-object v2, p1, v0

    .line 52
    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_context:Lorg/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lorg/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v0

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method
