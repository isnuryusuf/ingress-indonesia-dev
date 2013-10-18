.class public interface abstract Lorg/codehaus/jackson/map/Module$SetupContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V
.end method

.method public abstract addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V
.end method

.method public abstract addKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)V
.end method

.method public abstract addKeySerializers(Lorg/codehaus/jackson/map/Serializers;)V
.end method

.method public abstract addSerializers(Lorg/codehaus/jackson/map/Serializers;)V
.end method

.method public abstract addValueInstantiators(Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V
.end method

.method public abstract setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
