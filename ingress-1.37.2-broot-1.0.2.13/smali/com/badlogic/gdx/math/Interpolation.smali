.class public abstract Lcom/badlogic/gdx/math/Interpolation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bounce:Lcom/badlogic/gdx/math/Interpolation;

.field public static final bounceIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final bounceOut:Lcom/badlogic/gdx/math/Interpolation;

.field public static final circle:Lcom/badlogic/gdx/math/Interpolation;

.field public static final circleIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final circleOut:Lcom/badlogic/gdx/math/Interpolation;

.field public static final elastic:Lcom/badlogic/gdx/math/Interpolation$Elastic;

.field public static final elasticIn:Lcom/badlogic/gdx/math/Interpolation$Elastic;

.field public static final elasticOut:Lcom/badlogic/gdx/math/Interpolation$Elastic;

.field public static final exp10:Lcom/badlogic/gdx/math/Interpolation;

.field public static final exp10In:Lcom/badlogic/gdx/math/Interpolation;

.field public static final exp10Out:Lcom/badlogic/gdx/math/Interpolation;

.field public static final exp5:Lcom/badlogic/gdx/math/Interpolation;

.field public static final exp5In:Lcom/badlogic/gdx/math/Interpolation;

.field public static final exp5Out:Lcom/badlogic/gdx/math/Interpolation;

.field public static final fade:Lcom/badlogic/gdx/math/Interpolation;

.field public static final linear:Lcom/badlogic/gdx/math/Interpolation;

.field public static final pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow4:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow4In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final pow5:Lcom/badlogic/gdx/math/Interpolation$Pow;

.field public static final pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

.field public static final pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

.field public static final sine:Lcom/badlogic/gdx/math/Interpolation;

.field public static final sineIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final sineOut:Lcom/badlogic/gdx/math/Interpolation;

.field public static final swing:Lcom/badlogic/gdx/math/Interpolation;

.field public static final swingIn:Lcom/badlogic/gdx/math/Interpolation;

.field public static final swingOut:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/high16 v5, 0x40a0

    const/4 v4, 0x4

    const/high16 v3, 0x4120

    const/high16 v2, 0x4000

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow3Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow4Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5:Lcom/badlogic/gdx/math/Interpolation$Pow;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowIn;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$PowOut;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$PowOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sine:Lcom/badlogic/gdx/math/Interpolation;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sineIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->sineOut:Lcom/badlogic/gdx/math/Interpolation;

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Exp;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10:Lcom/badlogic/gdx/math/Interpolation;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ExpIn;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10In:Lcom/badlogic/gdx/math/Interpolation;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp10Out:Lcom/badlogic/gdx/math/Interpolation;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Exp;

    invoke-direct {v0, v2, v5}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5:Lcom/badlogic/gdx/math/Interpolation;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-direct {v0, v2, v5}, Lcom/badlogic/gdx/math/Interpolation$ExpIn;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-direct {v0, v2, v5}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$6;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$6;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circle:Lcom/badlogic/gdx/math/Interpolation;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$7;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$7;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circleIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$8;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Interpolation$8;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->circleOut:Lcom/badlogic/gdx/math/Interpolation;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Elastic;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elastic:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elasticIn:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->elasticOut:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Swing;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Interpolation$Swing;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swing:Lcom/badlogic/gdx/math/Interpolation;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$SwingIn;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$Bounce;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$Bounce;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounce:Lcom/badlogic/gdx/math/Interpolation;

    .line 115
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$BounceIn;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$BounceIn;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounceIn:Lcom/badlogic/gdx/math/Interpolation;

    .line 116
    new-instance v0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/math/Interpolation;->bounceOut:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    return-void
.end method


# virtual methods
.method public abstract apply(F)F
.end method

.method public apply(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    sub-float v0, p2, p1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method
