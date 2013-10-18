.class public final Lcom/nianticproject/ingress/common/q/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:F

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:F


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;IIF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/nianticproject/ingress/common/q/a/k;->a:I

    .line 42
    iput-object p2, p0, Lcom/nianticproject/ingress/common/q/a/k;->b:Ljava/lang/String;

    .line 43
    const/high16 v0, 0x3f80

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/q/a/k;->c:F

    .line 44
    iput-object p4, p0, Lcom/nianticproject/ingress/common/q/a/k;->d:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/nianticproject/ingress/common/q/a/k;->e:I

    .line 46
    iput p6, p0, Lcom/nianticproject/ingress/common/q/a/k;->f:I

    .line 47
    iput p7, p0, Lcom/nianticproject/ingress/common/q/a/k;->g:F

    .line 48
    return-void
.end method
