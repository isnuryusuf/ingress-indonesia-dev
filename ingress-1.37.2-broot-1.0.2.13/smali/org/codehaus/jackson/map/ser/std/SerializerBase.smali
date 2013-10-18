.class public abstract Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 39
    return-void
.end method


# virtual methods
.method public final handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/SerializerBase;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    move-object v0, p2

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 152
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 155
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 156
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 157
    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 158
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 160
    :cond_5
    if-nez v1, :cond_6

    .line 161
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 162
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 166
    :cond_6
    invoke-static {v0, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    move-object v0, p2

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 129
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 130
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 131
    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 132
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 129
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 134
    :cond_5
    if-nez v1, :cond_6

    .line 135
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 136
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 140
    :cond_6
    invoke-static {v0, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
