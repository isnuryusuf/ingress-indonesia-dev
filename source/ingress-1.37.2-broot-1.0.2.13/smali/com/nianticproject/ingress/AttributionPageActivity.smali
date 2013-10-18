.class public Lcom/nianticproject/ingress/AttributionPageActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AttributionPageActivity;->setVolumeControlStream(I)V

    .line 121
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AttributionPageActivity;->setContentView(I)V

    .line 122
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AttributionPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/nianticproject/ingress/ui/TitleBar;->a(Landroid/app/Activity;)Lcom/nianticproject/ingress/ui/TitleBar;

    move-result-object v0

    .line 124
    const v1, 0x7f09004d

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/AttributionPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/TitleBar;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/TitleBar;->a()V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 141
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->c()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 132
    new-instance v0, Lcom/nianticproject/ingress/ag;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/AttributionPageActivity;->a:Lcom/nianticproject/ingress/ag;

    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/AttributionPageActivity;->a:Lcom/nianticproject/ingress/ag;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AttributionPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method
