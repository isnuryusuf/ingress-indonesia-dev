.class final Lcom/nianticproject/ingress/m/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nianticproject/ingress/m/e;->b:Lcom/nianticproject/ingress/m/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/m/e;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/m/e;->b:Lcom/nianticproject/ingress/m/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/m/e;->b:Lcom/nianticproject/ingress/m/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/m/a;->b(Lcom/nianticproject/ingress/m/a;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/m/e;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/ai;)V

    .line 157
    return-void
.end method
