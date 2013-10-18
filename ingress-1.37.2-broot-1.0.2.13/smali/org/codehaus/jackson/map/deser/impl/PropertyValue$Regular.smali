.class final Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;
.super Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.source "SourceFile"


# instance fields
.field final _property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 54
    return-void
.end method


# virtual methods
.method public final assign(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
