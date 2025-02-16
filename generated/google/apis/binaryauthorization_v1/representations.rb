# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module BinaryauthorizationV1
      
      class AdmissionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdmissionWhitelistPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attestor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestorPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAttestorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PkixPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserOwnedGrafeasNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdmissionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_mode, as: 'enforcementMode'
          property :evaluation_mode, as: 'evaluationMode'
          collection :require_attestations_by, as: 'requireAttestationsBy'
        end
      end
      
      class AdmissionWhitelistPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name_pattern, as: 'namePattern'
        end
      end
      
      class Attestor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :user_owned_grafeas_note, as: 'userOwnedGrafeasNote', class: Google::Apis::BinaryauthorizationV1::UserOwnedGrafeasNote, decorator: Google::Apis::BinaryauthorizationV1::UserOwnedGrafeasNote::Representation
      
        end
      end
      
      class AttestorPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ascii_armored_pgp_public_key, as: 'asciiArmoredPgpPublicKey'
          property :comment, as: 'comment'
          property :id, as: 'id'
          property :pkix_public_key, as: 'pkixPublicKey', class: Google::Apis::BinaryauthorizationV1::PkixPublicKey, decorator: Google::Apis::BinaryauthorizationV1::PkixPublicKey::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListAttestorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attestors, as: 'attestors', class: Google::Apis::BinaryauthorizationV1::Attestor, decorator: Google::Apis::BinaryauthorizationV1::Attestor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class PkixPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_pem, as: 'publicKeyPem'
          property :signature_algorithm, as: 'signatureAlgorithm'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admission_whitelist_patterns, as: 'admissionWhitelistPatterns', class: Google::Apis::BinaryauthorizationV1::AdmissionWhitelistPattern, decorator: Google::Apis::BinaryauthorizationV1::AdmissionWhitelistPattern::Representation
      
          hash :cluster_admission_rules, as: 'clusterAdmissionRules', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          property :default_admission_rule, as: 'defaultAdmissionRule', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          property :description, as: 'description'
          property :global_policy_evaluation_mode, as: 'globalPolicyEvaluationMode'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UserOwnedGrafeasNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delegation_service_account_email, as: 'delegationServiceAccountEmail'
          property :note_reference, as: 'noteReference'
          collection :public_keys, as: 'publicKeys', class: Google::Apis::BinaryauthorizationV1::AttestorPublicKey, decorator: Google::Apis::BinaryauthorizationV1::AttestorPublicKey::Representation
      
        end
      end
    end
  end
end
