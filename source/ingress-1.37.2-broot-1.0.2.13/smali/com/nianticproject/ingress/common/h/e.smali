.class public Lcom/nianticproject/ingress/common/h/e;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;",
        "Lcom/nianticproject/ingress/shared/rpc/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/nianticproject/ingress/common/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/h/e;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/h/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 34
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/e;->b:Ljava/lang/String;

    .line 35
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/e;->c:Lcom/nianticproject/ingress/common/g/e;

    .line 36
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;",
            "Lcom/nianticproject/ingress/shared/rpc/c;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/h/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/e;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/aj;-><init>(Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;",
            "Lcom/nianticproject/ingress/shared/rpc/c;",
            ">;",
            "Lcom/nianticproject/ingress/shared/rpc/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/e;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/e;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/nianticproject/ingress/common/h/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already being used or does not exist (can be caused if the user selects items faster than we can mark them used)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->b:Lcom/nianticproject/ingress/shared/rpc/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/ar;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/c;->a:Lcom/nianticproject/ingress/shared/rpc/c;

    return-object v0
.end method
