.class public final Lcom/nianticproject/ingress/common/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/ah;

.field private final b:Lcom/nianticproject/ingress/common/m/d;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    invoke-direct {v0, p1, p2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/m/a;->a:Lcom/nianticproject/ingress/common/u/ah;

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/a;->a:Lcom/nianticproject/ingress/common/u/ah;

    new-instance v1, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 38
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/m/d;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/m/a;->b:Lcom/nianticproject/ingress/common/m/d;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/u/ah;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/a;->a:Lcom/nianticproject/ingress/common/u/ah;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/m/d;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/a;->b:Lcom/nianticproject/ingress/common/m/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/nianticproject/ingress/common/m/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/m/c;-><init>(Lcom/nianticproject/ingress/common/m/a;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/c;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 115
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/m/b;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/m/b;-><init>(Lcom/nianticproject/ingress/common/m/a;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;I)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/b;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 85
    return-void
.end method
