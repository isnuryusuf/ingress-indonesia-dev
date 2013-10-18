.class final Lcom/nianticproject/ingress/common/missions/tutorial/v;
.super Lcom/nianticproject/ingress/common/ui/elements/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;

.field private c:Lcom/nianticproject/ingress/common/c/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->b:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->a:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/aa;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->a:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->narration:Lcom/nianticproject/ingress/common/c/bs;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->a:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->narration:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    .line 60
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/v;->c:Lcom/nianticproject/ingress/common/c/bn;

    .line 70
    :cond_0
    return-void
.end method
