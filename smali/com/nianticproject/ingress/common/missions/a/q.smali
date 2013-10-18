.class final Lcom/nianticproject/ingress/common/missions/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/q;->a:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/q;->a:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a/l;->g(Lcom/nianticproject/ingress/common/missions/a/l;)V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/q;->a:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a/l;->h(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 178
    return-void
.end method
