.class final Lcom/nianticproject/ingress/common/missions/q;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/q;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/q;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a;->d()Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/a;->d:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v1, Lcom/nianticproject/ingress/common/missions/r;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/r;-><init>(Lcom/nianticproject/ingress/common/missions/q;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/q;->d()V

    .line 150
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/q;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Ljava/util/Collection;)V

    .line 173
    return-void
.end method
