.class final Lcom/nianticproject/ingress/common/missions/tutorial/o;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/google/a/a/aj",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/o;->a:Lcom/nianticproject/ingress/common/missions/tutorial/n;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 61
    check-cast p1, Lcom/google/a/a/aj;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/o;->a:Lcom/nianticproject/ingress/common/missions/tutorial/n;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/n;->a:Lcom/nianticproject/ingress/common/missions/tutorial/m;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/m;->a:Lcom/nianticproject/ingress/common/missions/tutorial/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/l;->a(Lcom/nianticproject/ingress/common/missions/tutorial/l;)Lcom/nianticproject/ingress/common/missions/tutorial/u;

    move-result-object v0

    const-string/jumbo v1, "Simulation portal"

    invoke-interface {v0, v1, p1}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Ljava/lang/String;Lcom/google/a/a/aj;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/o;->a:Lcom/nianticproject/ingress/common/missions/tutorial/n;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/n;->a:Lcom/nianticproject/ingress/common/missions/tutorial/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/m;->g()V

    const/4 v0, 0x0

    return-object v0
.end method
