.class public final Lcom/nianticproject/ingress/common/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/ag;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/ah;

.field private final c:Lcom/nianticproject/ingress/common/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/nianticproject/ingress/common/ag;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ag;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/ag;->a:Lcom/nianticproject/ingress/common/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/ah;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ah;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ag;->b:Lcom/nianticproject/ingress/common/ah;

    .line 57
    new-instance v0, Lcom/nianticproject/ingress/common/ah;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ah;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ag;->c:Lcom/nianticproject/ingress/common/ah;

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/common/ag;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nianticproject/ingress/common/ag;->a:Lcom/nianticproject/ingress/common/ag;

    return-object v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->b:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ah;->a(FF)V

    .line 65
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/aw;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->b:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ah;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->b:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ah;->b()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/u/aw;->c(F)Lcom/nianticproject/ingress/common/u/aw;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->c:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ah;->a()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->c:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ah;->b()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/u/aw;->b(F)Lcom/nianticproject/ingress/common/u/aw;

    .line 79
    :cond_1
    return-void
.end method

.method public final b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ag;->c:Lcom/nianticproject/ingress/common/ah;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ah;->a(FF)V

    .line 69
    return-void
.end method
