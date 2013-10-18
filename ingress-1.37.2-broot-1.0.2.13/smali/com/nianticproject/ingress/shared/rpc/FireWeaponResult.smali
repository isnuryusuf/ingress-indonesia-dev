.class public final Lcom/nianticproject/ingress/shared/rpc/FireWeaponResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final damages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/FireWeaponResult;->damages:Ljava/util/Set;

    .line 30
    return-void
.end method
