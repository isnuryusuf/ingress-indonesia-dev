.class public final enum Lcom/nianticproject/ingress/shared/rpc/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/s;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/s;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/s;

.field private static final synthetic e:[Lcom/nianticproject/ingress/shared/rpc/s;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/s;

    const-string/jumbo v1, "SPATIAL_PUBLIC"

    invoke-direct {v0, v1, v5, v3}, Lcom/nianticproject/ingress/shared/rpc/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/s;->a:Lcom/nianticproject/ingress/shared/rpc/s;

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/s;

    const-string/jumbo v1, "SPATIAL_FACTION"

    invoke-direct {v0, v1, v3, v4}, Lcom/nianticproject/ingress/shared/rpc/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/s;->b:Lcom/nianticproject/ingress/shared/rpc/s;

    .line 29
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/s;

    const-string/jumbo v1, "PLAYER_DIRECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/shared/rpc/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/s;->c:Lcom/nianticproject/ingress/shared/rpc/s;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->a:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->b:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->c:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/s;->e:[Lcom/nianticproject/ingress/shared/rpc/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    if-gtz p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "non-positive number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Persisted Id value for a PlextCategory must be power of 2."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 63
    iput p3, p0, Lcom/nianticproject/ingress/shared/rpc/s;->d:I

    .line 64
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Lcom/nianticproject/ingress/shared/rpc/s;)I
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/a/c/du;->a([Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/s;

    iget v0, v0, Lcom/nianticproject/ingress/shared/rpc/s;->d:I

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/s;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/s;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/s;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/s;->e:[Lcom/nianticproject/ingress/shared/rpc/s;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/s;

    return-object v0
.end method
