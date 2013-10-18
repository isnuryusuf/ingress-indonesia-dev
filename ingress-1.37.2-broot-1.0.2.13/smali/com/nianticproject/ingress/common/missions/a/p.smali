.class final Lcom/nianticproject/ingress/common/missions/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/a/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/p;->b:Lcom/nianticproject/ingress/common/missions/a/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/p;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/p;->b:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a/l;->f(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/p;->b:Lcom/nianticproject/ingress/common/missions/a/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/p;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/l;->a(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
