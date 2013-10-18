.class final Lcom/nianticproject/ingress/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/nianticproject/ingress/dv;->b:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/nianticproject/ingress/dv;->a:Landroid/view/View;

    .line 120
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/dv;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/nianticproject/ingress/dv;->c:Z

    .line 148
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/nianticproject/ingress/dv;->c:Z

    return v0
.end method
