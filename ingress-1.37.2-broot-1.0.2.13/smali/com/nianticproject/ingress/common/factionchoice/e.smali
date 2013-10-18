.class final Lcom/nianticproject/ingress/common/factionchoice/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:F

.field final synthetic d:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic e:Lcom/nianticproject/ingress/common/missions/cs;

.field final synthetic f:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/missions/cs;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->a:Lcom/nianticproject/ingress/shared/ai;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->b:Ljava/lang/String;

    iput p4, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->c:F

    iput-object p5, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-object p6, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->e:Lcom/nianticproject/ingress/common/missions/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->a:Lcom/nianticproject/ingress/shared/ai;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ax;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->c:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/factionchoice/ax;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->e:Lcom/nianticproject/ingress/common/missions/cs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/factionchoice/aw;->d()Lcom/nianticproject/ingress/common/missions/cr;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/cs;->a(Lcom/nianticproject/ingress/common/missions/cr;)V

    .line 91
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/ay;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->c:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/factionchoice/e;->f:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/factionchoice/d;->b(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/factionchoice/ay;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V

    goto :goto_0
.end method
