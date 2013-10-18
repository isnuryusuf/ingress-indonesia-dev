.class final Lcom/nianticproject/ingress/common/missions/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/ca;

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/bp;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ca;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bt;->b:Lcom/nianticproject/ingress/common/missions/bp;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/bt;->a:Lcom/nianticproject/ingress/common/missions/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/bt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bt;->b:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bt;->a:Lcom/nianticproject/ingress/common/missions/ca;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/g/p;->a(Z)V

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bt;->b:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bt;->b:Lcom/nianticproject/ingress/common/missions/bp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bt;->a:Lcom/nianticproject/ingress/common/missions/ca;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/ca;)V

    .line 312
    :cond_0
    return-void
.end method
