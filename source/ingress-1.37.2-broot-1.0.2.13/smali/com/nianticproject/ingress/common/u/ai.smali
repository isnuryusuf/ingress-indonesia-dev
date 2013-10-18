.class public Lcom/nianticproject/ingress/common/u/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/h;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GameBasket not empty, has at least a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v2, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/common/u/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 37
    :cond_1
    return-void
.end method
