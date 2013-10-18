.class final Lcom/nianticproject/ingress/common/o/m;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Lcom/google/a/d/u;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/a/d/u;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 23
    check-cast p1, Lcom/google/a/d/u;

    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const-string/jumbo v2, "%08x%s%08x"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
