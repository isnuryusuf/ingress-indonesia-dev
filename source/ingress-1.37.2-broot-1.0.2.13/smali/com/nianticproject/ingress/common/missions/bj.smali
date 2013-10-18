.class final Lcom/nianticproject/ingress/common/missions/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bi;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bj;->a:Lcom/nianticproject/ingress/common/missions/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bj;->a:Lcom/nianticproject/ingress/common/missions/bi;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const-string/jumbo v1, "ResonatedSecondPortal"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 404
    return-void
.end method
