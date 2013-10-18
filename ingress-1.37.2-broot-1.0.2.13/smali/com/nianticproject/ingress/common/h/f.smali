.class public Lcom/nianticproject/ingress/common/h/f;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/ae;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/a;

.field private final c:Lcom/nianticproject/ingress/common/g/e;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/h/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/h/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 39
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->b:Lcom/nianticproject/ingress/common/a;

    .line 40
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->c:Lcom/nianticproject/ingress/common/g/e;

    .line 41
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->d:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Drop successful"

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/f;->b:Lcom/nianticproject/ingress/common/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Drop failed: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/h/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/f;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/aj;-><init>(Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->f:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/f;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/h/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Item is already being used or does not exist (can be caused if the user selects items faster than we can mark them used)."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->g:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/ar;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->j:Lcom/nianticproject/ingress/shared/ae;

    return-object v0
.end method
