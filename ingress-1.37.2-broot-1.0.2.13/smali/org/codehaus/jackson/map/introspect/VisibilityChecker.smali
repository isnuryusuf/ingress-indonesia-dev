.class public interface abstract Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z
.end method

.method public abstract isFieldVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method

.method public abstract isGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isIsGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isSetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract with(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withCreatorVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method
