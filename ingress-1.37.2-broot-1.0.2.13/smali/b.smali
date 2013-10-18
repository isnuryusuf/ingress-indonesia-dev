.class public Lb;
.super Lcom/nianticproject/ingress/common/ui/a;


# instance fields
.field private a:LG;

.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private a:Lcom/nianticproject/ingress/common/ui/widget/aa;

.field private b:LG;

.field private c:LG;

.field private d:LG;

.field private e:LG;

.field private f:LG;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    new-instance v1, Lc;

    invoke-direct {v1, p0}, Lc;-><init>(Lb;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    return-void
.end method

.method static synthetic a(Lb;)LG;
    .locals 1

    iget-object v0, p0, Lb;->a:LG;

    return-object v0
.end method

.method static synthetic a(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->a:LG;

    return-object p1
.end method

.method static synthetic a(Lb;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget-object v0, p0, Lb;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method static synthetic a(Lb;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    iput-object p1, p0, Lb;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p1
.end method

.method static synthetic a(Lb;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 1

    iget-object v0, p0, Lb;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object v0
.end method

.method static synthetic a(Lb;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 0

    iput-object p1, p0, Lb;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object p1
.end method

.method static synthetic a(Lb;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb;->a(Z)V

    return-void
.end method

.method static synthetic a(Lb;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lb;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, LJ;->d()V

    :cond_0
    iget-object v0, p0, Lb;->a:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "Swap"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "Leave"

    goto :goto_0
.end method

.method static synthetic b(Lb;)LG;
    .locals 1

    iget-object v0, p0, Lb;->b:LG;

    return-object v0
.end method

.method static synthetic b(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->b:LG;

    return-object p1
.end method

.method private b()V
    .locals 3

    sget-object v0, LJ;->b:LU;

    iget-object v0, v0, LU;->b:Ljava/lang/String;

    sget-object v1, LJ;->b:LU;

    sget-object v2, LU;->a:LU;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LJ;->a:LU;

    iget-object v1, v1, LU;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lb;->e:LG;

    iget-object v1, v1, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lb;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, LJ;->d()V

    :cond_0
    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-object v1, LJ;->a:LS;

    iget-object v1, v1, LS;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "Show"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "Show"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "Show"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->d:Z

    if-eqz v1, :cond_4

    const-string v1, "Show"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->f:Z

    if-eqz v1, :cond_5

    const-string v1, "Show"

    :goto_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->g:Z

    if-eqz v1, :cond_6

    const-string v1, "Show"

    :goto_5
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->h:Z

    if-eqz v1, :cond_7

    const-string v1, "Show"

    :goto_6
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    return-void

    :cond_1
    const-string v1, "Hide"

    goto/16 :goto_0

    :cond_2
    const-string v1, "Hide"

    goto :goto_1

    :cond_3
    const-string v1, "Hide"

    goto :goto_2

    :cond_4
    const-string v1, "Hide"

    goto :goto_3

    :cond_5
    const-string v1, "Hide"

    goto :goto_4

    :cond_6
    const-string v1, "Hide"

    goto :goto_5

    :cond_7
    const-string v1, "Hide"

    goto :goto_6
.end method

.method static synthetic c(Lb;)LG;
    .locals 1

    iget-object v0, p0, Lb;->c:LG;

    return-object v0
.end method

.method static synthetic c(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->c:LG;

    return-object p1
.end method

.method static synthetic c(Lb;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb;->d(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, LJ;->d()V

    :cond_0
    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "ON"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->k:Z

    if-eqz v1, :cond_2

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->l:Z

    if-eqz v1, :cond_3

    const-string v1, "ON"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->m:Z

    if-eqz v1, :cond_4

    const-string v1, "ON"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->n:Z

    if-eqz v1, :cond_5

    const-string v1, "ON"

    :goto_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->c:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->o:Z

    if-eqz v1, :cond_6

    const-string v1, "ON"

    :goto_5
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "OFF"

    goto :goto_0

    :cond_2
    const-string v1, "OFF"

    goto :goto_1

    :cond_3
    const-string v1, "OFF"

    goto :goto_2

    :cond_4
    const-string v1, "OFF"

    goto :goto_3

    :cond_5
    const-string v1, "OFF"

    goto :goto_4

    :cond_6
    const-string v1, "OFF"

    goto :goto_5
.end method

.method static synthetic d(Lb;)LG;
    .locals 1

    iget-object v0, p0, Lb;->f:LG;

    return-object v0
.end method

.method static synthetic d(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->d:LG;

    return-object p1
.end method

.method static synthetic d(Lb;)V
    .locals 0

    invoke-direct {p0}, Lb;->b()V

    return-void
.end method

.method private d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, LJ;->d()V

    :cond_0
    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->p:Z

    if-eqz v1, :cond_1

    const-string v1, "ON"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->q:Z

    if-eqz v1, :cond_2

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->r:Z

    if-eqz v1, :cond_3

    const-string v1, "ON"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->t:Z

    if-eqz v1, :cond_4

    const-string v1, "ON"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->u:Z

    if-eqz v1, :cond_5

    const-string v1, "ON"

    :goto_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    sget v0, LJ;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "00:00"

    move-object v1, v0

    :goto_5
    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->v:Z

    if-eqz v1, :cond_6

    const-string v1, "ON"

    :goto_6
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->w:Z

    if-eqz v1, :cond_7

    const-string v1, "ON"

    :goto_7
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    sget v0, LJ;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Unknown"

    move-object v1, v0

    :goto_8
    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->x:Z

    if-eqz v1, :cond_8

    const-string v1, "ON"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->y:Z

    if-eqz v1, :cond_9

    const-string v1, "ON"

    :goto_a
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lb;->d:LG;

    iget-object v0, v0, LG;->a:Ljava/util/List;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-boolean v1, LJ;->z:Z

    if-eqz v1, :cond_a

    const-string v1, "ON"

    :goto_b
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "OFF"

    goto/16 :goto_0

    :cond_2
    const-string v1, "OFF"

    goto/16 :goto_1

    :cond_3
    const-string v1, "OFF"

    goto/16 :goto_2

    :cond_4
    const-string v1, "OFF"

    goto/16 :goto_3

    :cond_5
    const-string v1, "OFF"

    goto/16 :goto_4

    :pswitch_0
    const-string v0, "12:00 AM"

    move-object v1, v0

    goto/16 :goto_5

    :pswitch_1
    const-string v0, "00:00:00"

    move-object v1, v0

    goto/16 :goto_5

    :cond_6
    const-string v1, "OFF"

    goto/16 :goto_6

    :cond_7
    const-string v1, "OFF"

    goto :goto_7

    :sswitch_0
    const-string v0, "Disabled"

    move-object v1, v0

    goto :goto_8

    :sswitch_1
    const-string v0, "30sec"

    move-object v1, v0

    goto :goto_8

    :sswitch_2
    const-string v0, "1min"

    move-object v1, v0

    goto :goto_8

    :sswitch_3
    const-string v0, "2min"

    move-object v1, v0

    goto/16 :goto_8

    :sswitch_4
    const-string v0, "5min"

    move-object v1, v0

    goto/16 :goto_8

    :sswitch_5
    const-string v0, "10min"

    move-object v1, v0

    goto/16 :goto_8

    :sswitch_6
    const-string v0, "15min"

    move-object v1, v0

    goto/16 :goto_8

    :cond_8
    const-string v1, "OFF"

    goto :goto_9

    :cond_9
    const-string v1, "OFF"

    goto :goto_a

    :cond_a
    const-string v1, "OFF"

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
        0xdbba0 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic e(Lb;)LG;
    .locals 1

    iget-object v0, p0, Lb;->d:LG;

    return-object v0
.end method

.method static synthetic e(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->e:LG;

    return-object p1
.end method

.method static synthetic f(Lb;LG;)LG;
    .locals 0

    iput-object p1, p0, Lb;->f:LG;

    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb;->a(Z)V

    invoke-direct {p0, v0}, Lb;->b(Z)V

    invoke-direct {p0, v0}, Lb;->c(Z)V

    invoke-direct {p0, v0}, Lb;->d(Z)V

    invoke-direct {p0}, Lb;->b()V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-class v0, Lb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
