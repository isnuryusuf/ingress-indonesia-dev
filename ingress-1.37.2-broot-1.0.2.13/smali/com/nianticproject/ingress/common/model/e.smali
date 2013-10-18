.class public final Lcom/nianticproject/ingress/common/model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nianticproject/ingress/common/model/e;


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/model/e;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/e;-><init>(Ljava/util/Set;J)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/e;->a:Lcom/nianticproject/ingress/common/model/e;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;J)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/e;->b:Ljava/util/Set;

    .line 50
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/model/e;->c:J

    .line 51
    return-void
.end method
