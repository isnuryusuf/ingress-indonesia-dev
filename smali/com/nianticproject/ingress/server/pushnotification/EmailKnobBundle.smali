.class public Lcom/nianticproject/ingress/server/pushnotification/EmailKnobBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# instance fields
.field private delivery:Lcom/nianticproject/ingress/server/pushnotification/a;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final redirectAllEmailTo:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/server/pushnotification/EmailKnobBundle;->redirectAllEmailTo:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/nianticproject/ingress/server/pushnotification/a;->b:Lcom/nianticproject/ingress/server/pushnotification/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/server/pushnotification/EmailKnobBundle;->delivery:Lcom/nianticproject/ingress/server/pushnotification/a;

    .line 40
    return-void
.end method
