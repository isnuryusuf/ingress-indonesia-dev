.class final Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;
.super Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.source "SourceFile"


# instance fields
.field final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 105
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public final assign(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Map;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
