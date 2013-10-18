.class final Lcom/nianticproject/ingress/common/factionchoice/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/az;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->d:Lcom/nianticproject/ingress/common/factionchoice/d;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 123
    iget-object v7, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->d:Lcom/nianticproject/ingress/common/factionchoice/d;

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->d:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->d:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/factionchoice/d;->c(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/factionchoice/h;->d:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/factionchoice/d;->d(Lcom/nianticproject/ingress/common/factionchoice/d;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/factionchoice/aj;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->d(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 126
    return-void
.end method
