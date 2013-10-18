.class public Lcom/nianticproject/ingress/SoundBoardActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ab;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/bn;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/c/e;

.field private d:Landroid/widget/TextView;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/dv;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/ab;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ab;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->a:Lcom/nianticproject/ingress/common/ab;

    .line 30
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->b:Ljava/util/List;

    .line 35
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    .line 40
    invoke-static {}, Lcom/nianticproject/ingress/common/c/ba;->values()[Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 41
    new-instance v5, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v5}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/nianticproject/ingress/common/c/ba;

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bo;->e()Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/SoundBoardActivity;->setVolumeControlStream(I)V

    .line 58
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->c:Lcom/nianticproject/ingress/common/c/e;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->a:Lcom/nianticproject/ingress/common/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->c:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 66
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/SoundBoardActivity;->setContentView(I)V

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "0"

    const v3, 0x7f080081

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "1"

    const v3, 0x7f080082

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "2"

    const v3, 0x7f080083

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "3"

    const v3, 0x7f080084

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "4"

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "5"

    const v3, 0x7f080086

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "6"

    const v3, 0x7f080087

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "7"

    const v3, 0x7f080088

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "8"

    const v3, 0x7f080089

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "9"

    const v3, 0x7f08008a

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "a"

    const v3, 0x7f08008b

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "b"

    const v3, 0x7f08008c

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "c"

    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "d"

    const v3, 0x7f08008e

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "e"

    const v3, 0x7f08008f

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/dv;

    const-string/jumbo v2, "f"

    const v3, 0x7f080090

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/dv;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->d:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/SoundBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->f:Landroid/widget/GridView;

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/nianticproject/ingress/dw;

    iget-object v2, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nianticproject/ingress/dw;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->a:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->b()V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->a:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->c()V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/SoundBoardActivity;->a:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->f_()V

    .line 95
    return-void
.end method
