.class public Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;
.super Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/nianticproject/ingress/multiphotos/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;-><init>()V

    .line 212
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;ILandroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->c:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "PortalImageGridActivity"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/multiphotos/ba;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/au;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/multiphotos/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/a/ak",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/multiphotos/bd;->a(Ljava/util/Collection;)V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 80
    :cond_0
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->setContentView(I)V

    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->d()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/multiphotos/av;->a(Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v0

    move-object v2, v0

    .line 85
    :goto_1
    if-nez v2, :cond_2

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Portal not found in cache, finishing..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->finish()V

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 91
    :cond_2
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->d:Landroid/widget/GridView;

    .line 93
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->f:Landroid/view/View;

    .line 96
    sget-object v1, Lcom/nianticproject/ingress/shared/m;->a:Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v2, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/aq;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/aq;-><init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->e()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/nianticproject/ingress/i/a;->b()Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;->getCoverPhoto()Lcom/nianticproject/ingress/shared/portal/PortalImage;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/multiphotos/ar;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/multiphotos/ar;-><init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/multiphotos/g;->a(Landroid/support/v4/app/j;Lb/a/a;)Lcom/nianticproject/ingress/multiphotos/g;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/g;->b()Lcom/nianticproject/ingress/multiphotos/f;

    move-result-object v1

    invoke-direct {v2, p0, v1, v0}, Lcom/nianticproject/ingress/multiphotos/bd;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/multiphotos/f;Lcom/nianticproject/ingress/shared/portal/a;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/as;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/as;-><init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/at;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/at;-><init>(Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/bg;->a(Landroid/view/ViewGroup;)V

    .line 156
    invoke-super {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onPause()V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->e()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/i/a;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-static {v0}, Lcom/nianticproject/ingress/i/b;->a(Lcom/nianticproject/ingress/i/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/multiphotos/bd;->a(Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public final y_()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/bd;->a()I

    move-result v1

    .line 190
    add-int/lit8 v0, v0, 0x1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z_()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->g:Lcom/nianticproject/ingress/multiphotos/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/bd;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
