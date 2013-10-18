.class final Lcom/nianticproject/ingress/by;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/b;

.field final synthetic b:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/nianticproject/ingress/by;->b:Lcom/nianticproject/ingress/NemesisActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/by;->a:Lcom/nianticproject/ingress/common/b;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/nianticproject/ingress/by;->b:Lcom/nianticproject/ingress/NemesisActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/by;->a:Lcom/nianticproject/ingress/common/b;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;)V

    const/4 v0, 0x0

    return-object v0
.end method
