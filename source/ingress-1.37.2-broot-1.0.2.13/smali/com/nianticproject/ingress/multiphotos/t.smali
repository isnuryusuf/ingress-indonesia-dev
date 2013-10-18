.class final Lcom/nianticproject/ingress/multiphotos/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/text/Spanned;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/t;->c:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/multiphotos/t;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/t;->a:Ljava/lang/String;

    new-instance v1, Lcom/nianticproject/ingress/multiphotos/u;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/multiphotos/u;-><init>(Lcom/nianticproject/ingress/multiphotos/t;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 345
    check-cast p1, Landroid/text/Spanned;

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/t;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/t;->b:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method
